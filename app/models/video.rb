class Video < ActiveRecord::Base
  attr_accessible :description, :title, :project_id, :link
  belongs_to :project
end
