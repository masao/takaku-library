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
  end
end
