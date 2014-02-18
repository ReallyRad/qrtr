class Video < ActiveRecord::Base
  validates_presence_of :link
  before_validation :preprocess_link
  attr_accessible :description, :title, :project_id, :link
  belongs_to :project
  validate :link_origin

  def preprocess_link
    if link.include? "vimeo"
      origin = "vimeo"
      provider_id =
    end
  end

end

