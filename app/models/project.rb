class Project < ActiveRecord::Base
  attr_accessible :description, :title, :videos_attributes, :pictures_attributes

  has_one :github
  has_many :pictures, :as => :imageable
  has_many :videos
  has_many :made_withs
  has_many :tools, :through => :made_withs

  accepts_nested_attributes_for :pictures, :allow_destroy => true
  accepts_nested_attributes_for :videos, :allow_destroy => true
end
