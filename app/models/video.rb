class Video < ActiveRecord::Base
  validates_presence_of :link
  after_validation :format_link
  attr_accessible :description, :title, :project_id, :link
  belongs_to :project
  validate :link_origin

  def link_origin
    if link.include? "vimeo"

    end
  end

end

