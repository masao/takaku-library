module EnjuBiblio
  module BiblioHelper
    def form_icon(carrier_type)
      case carrier_type.name
      when 'volume'
        image_tag('icons/book.png', size: '16x16', alt: carrier_type.display_name.localize)
      when 'audio_disc'
        image_tag('icons/cd.png', size: '16x16', alt: carrier_type.display_name.localize)
      when 'videodisc'
        image_tag('icons/dvd.png', size: '16x16', alt: carrier_type.display_name.localize)
      when 'online_resource'
        image_tag('icons/monitor.png', size: '16x16', alt: carrier_type.display_name.localize)
      when 'large_picturebook'
        image_tag('icons/large_picturebook.png', size: '16x16', alt: carrier_type.display_name.localize)
      else
        image_tag('icons/help.png', size: '16x16', alt: t('page.unknown'))
      end
    rescue NoMethodError
      image_tag('icons/help.png', size: '16x16', alt: t('page.unknown'))
    end

    def content_type_icon(content_type)
      case content_type.name
      when 'text'
        image_tag('icons/page_white_text.png', size: '16x16', alt: content_type.display_name.localize)
      when 'still_image'
        image_tag('icons/picture.png', size: '16x16', alt: content_type.display_name.localize)
      when 'sounds'
        image_tag('icons/sound.png', size: '16x16', alt: content_type.display_name.localize)
      when 'two_dimensional_moving_image'
        image_tag('icons/film.png', size: '16x16', alt: content_type.display_name.localize)
      else
        image_tag('icons/help.png', size: '16x16', alt: t('page.unknown'))
      end
    rescue NoMethodError
      image_tag('icons/help.png', size: '16x16', alt: t('page.unknown'))
    end

    def agent_type_icon(agent_type)
      case agent_type
      when 'person'
        image_tag('icons/user.png', size: '16x16', alt: 'Person')
      when 'corporate_body'
        image_tag('icons/group.png', size: '16x16', alt: 'CorporateBody')
      else
        image_tag('icons/help.png', size: '16x16', alt: t('page.unknown'))
      end
    end

    def agents_list(agents = [], options = {})
      return nil if agents.blank?
      agents_list = []
      if options[:nolink]
        agents_list = agents.map{|agent| agent.full_name}
      else
        agents_list = agents.map{|agent| link_to(agent.full_name, manifestations_path(query: "\"#{agent.full_name}\""), options)}
      end
      agents_list.join(" ").html_safe
    end

    def identifier_link(identifier)
      case identifier.identifier_type.name
      when 'doi'
        link_to identifier.body, "http://dx.doi.org/#{identifier.body}"
      when 'iss_itemno'
        link_to identifier.body, "http://iss.ndl.go.jp/books/#{identifier.body}"
      when 'lccn'
        link_to identifier.body, "http://lccn.loc.gov/#{identifier.body}"
      when 'ncid'
        link_to identifier.body, "http://ci.nii.ac.jp/ncid/#{identifier.body}"
      else
        identifier.body
      end
    end
  end
end
