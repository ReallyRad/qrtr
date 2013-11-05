class Picture < ActiveRecord::Base
   attr_accessible :title, :image

  belongs_to :imageable, :polymorphic => true
  mount_uploader :image, ImageUploader
end
