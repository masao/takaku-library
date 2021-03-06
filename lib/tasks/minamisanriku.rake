namespace :minamisanriku do
  namespace :export do
    desc 'Export checkouts'
    task :checkout => :environment do
      Checkout.find_each do |c|
        puts "#{c.created_at}\t#{c.item.item_identifier}\t#{c.item.shelf.name}\t#{c.item.manifestation.carrier_type.name}\t#{c.item.manifestation.original_title}" if c.item
      end
    end

    desc 'Export items'
    task :item => :environment do
      puts Manifestation.export(format: :txt)
    end
  end

  namespace :import do
    desc 'Import resources'
    task :start => :environment do
      Manifestation.find_each do |manifestation|
        next if manifestation.identifier_contents(:isbn).blank?
        #next if manifestation.nbn
        doc = Manifestation.return_xml(manifestation.identifier_contents(:isbn).first)
        next unless doc

        language = doc.at('//dcterms:language[@rdf:datatype="http://purl.org/dc/terms/ISO639-2"]').try(:content)
        manifestation.language = Language.where(:iso_639_2 => language.downcase).first if language
        manifestation.description = doc.at('//dcterms:abstract').try(:content) if manifestation.description.blank?
        manifestation.price = doc.at('//dcndl:price').try(:content) if manifestation.price.blank?
        manifestation.volume_number_string = doc.at('//dcndl:volume/rdf:Description/rdf:value').try(:content) if manifestation.volume_number_string.blank?
        extent = doc.at('//dcterms:extent').try(:content)
        manifestation.statement_of_responsibility = doc.xpath('//dcndl:BibResource/dc:creator').map{|e| e.content}.join("; ")

        if extent
          extent = extent.split(';')
          page = extent[0].strip
          if page =~ /\d+p/
            manifestation.start_page = 1
            manifestation.end_page = page.to_i
          end
          height = extent[1].strip
          if height =~ /\d+cm/
            manifestation.height = height.to_i
          end
        end
        manifestation.save(:validate => false)

        #p manifestation.id
      #end
    #end

    #task :subject => :environment do
      #Manifestation.find_each do |manifestation|
        next unless manifestation.subjects.empty?
        #next if manifestation.identifier_contents(:isbn).blank?
        #doc = Manifestation.return_xml(manifestation.identifier_contents(:isbn).first)
        #next unless doc
        terms = []
        doc.xpath('//dcterms:subject/rdf:Description/rdf:value').each do |term|
          terms << term.try(:content)
        end

        classification_urls = doc.xpath('//dcterms:subject[@rdf:resource]').map{|subject| subject.attributes['resource'].value}
        if classification_urls
          ndc9_url = classification_urls.map{|url| URI.parse(URI.escape(url))}.select{|u| u.path.split('/').reverse[1] == 'ndc9'}.first
          if ndc9_url
            ndc = ndc9_url.path.split('/').last
            classification_type = ClassificationType.where(:name => 'ndc9').first_or_create
            classification = Classification.new(:category => ndc)
            classification.classification_type = classification_type
            if manifestation.classifications.empty?
              manifestation.classifications << classification if classification.valid?
            end
          end
        end

        terms.each do |term|
          subject = Subject.where(:term => term).first
          unless subject
            subject = Subject.create(:term => term, :subject_type_id => 1, :subject_heading_type_id => 1)
          end
          if manifestation.subjects.empty?
            manifestation.subjects << subject # if subject.valid?
          end
        end
        p manifestation.id
      end
    end
  end

  def check_items
    if ENV["shelf"] and not ENV["shelf"].blank?
      @shelf = Shelf.where(name: ENV["shelf"]).first
    end
    @error = {
      missing: [],
      error: [],
      other_shelf: [],
    }
    io = open(ENV["file"]) if ENV["file"]
    io ||= STDIN
    ids = []
    io.each do |line|
      next if line.strip.empty?
      ids << line.split.first
    end
    found_items = Set[ *ids ]
    all_items = Item.where(shelf_id: @shelf.id).map do |item|
      item.item_identifier
    end
    items = Set[ *all_items ]
    missing_items = ( items - found_items ).to_a
    @error[:missing] = missing_items.select do |item|
      true
      # Checkout.where(item_id: item.id)
    end
    ( found_items - items ).each do |item|
      if Item.where(item_identifier: item).first.nil?
        @error[:error] << item
      else
        @error[:other_shelf] << item
      end
    end
    [ :missing, :other_shelf ].each do |type|
      @error[type].each do |item_id|
        item = Item.where(item_identifier: item_id).first
        puts [ type, item_id, item.shelf.name, "/items/#{item.id}" ].join("\t")
      end
    end
    @error[:error].each do |item|
      puts [ :error, item, @shelf.name ].join("\t")
    end
  end
  desc "check items"
  task :check_items => :environment do
    check_items
  end
end
