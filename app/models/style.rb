class Style < ActiveRecord::Base
  attr_accessible :amenity, :exterior, :interior, :people, :image, :remote_image_url

  mount_uploader :image, ImageUploader

  has_many :requirements, :through => :requirement_styles
  belongs_to :requirement_styles
end
