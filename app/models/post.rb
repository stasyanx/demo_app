class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title ,presence: true
  validates :text ,presence: true



  belongs_to :user
  has_many :comments , dependent: :destroy
  has_many :images

  scope :order_desc, -> {order('created_at DESC')}

  def self.search(search)
    #binding.pry;
      where(['text || title LIKE ?', "%#{search}%"])
  end
end
