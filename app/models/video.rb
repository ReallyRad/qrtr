class Video < ActiveRecord::Base
  attr_accessible :description, :title, :project_id, :origin
#  before_validation :preprocess_link
  belongs_to :project
  #validate :link_origin
=begin
  def preprocess_link
    if self.origin.include? "vimeo"
      self.provider_id = self.origin.split("vimeo.com/").second
      self.origin = "vimeo"
    elsif self.origin.downcase!.include? "youtube"
      origin = "youtube"
      provider_id = self.origin.split("?v=").second
    else
      errors.add :origin, "Video link must be from Youtube or Vimeo"
    end
  end
=end
end

