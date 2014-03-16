module VideosHelper

  def embed_link_from_origin o
    if o.include? 'vimeo'
      provider_id = o.split("vimeo.com/").second
      return "http://player.vimeo.com/video/#{provider_id}"
    elsif o.include? 'youtube'
      provider_id = o.split("?v=").second
      return "//www.youtube.com/embed/#{provider_id}"
    end
  end

  def class_from_origin o
    if o.include? 'vimeo'
      return 'vimeo'
    elsif o.include? 'youtube'
      return 'youtube'
    end
  end
end