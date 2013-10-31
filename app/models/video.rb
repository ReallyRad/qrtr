class Video < ActiveRecord::Base
  validates_presence_of :link
  attr_accessible :description, :title, :project_id, :link
  belongs_to :project
end
