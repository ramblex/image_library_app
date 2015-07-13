class Post < ActiveRecord::Base
  has_many :post_images
  has_many :image_library_uploads, through: :post_images
  validates_presence_of :title

  accepts_nested_attributes_for :post_images
end
