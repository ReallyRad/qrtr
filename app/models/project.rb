class Project < ActiveRecord::Base
  attr_accessible :description, :title, :videos_attributes

  has_many :videos
  has_one :github
  has_many :made_withs
  has_many :tools, :through => :made_withs

  accepts_nested_attributes_for :videos
end
