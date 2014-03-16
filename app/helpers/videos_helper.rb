module VideosHelper

  def embed_link_from_origin v
    if v.origin.downcase!.include? 'vimeo'
      provider_id = origin.split("vimeo.com/").second
      return "http://player.vimeo.com/video/#{provider_id}"
    elsif v.origin == 'youtube'
      provider_id = origin.split("?v=").second
      return "//www.youtube.com/embed/#{provider_id}"
    end
  end

end