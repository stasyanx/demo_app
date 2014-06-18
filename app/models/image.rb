class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :name,presence: true

  belongs_to :post
  belongs_to :user

end
