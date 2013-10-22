class Tool < ActiveRecord::Base
  attr_accessible :name
  has_many :made_withs
  has_many :projects, :through => :made_withs
end
