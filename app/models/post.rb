class Post < ActiveRecord::Base

  validates :title ,presence: true
  validates :text ,presence: true



  belongs_to :user
  has_many :comments , dependent: :destroy


  def self.search(search)
    #binding.pry;
      where(['text || title LIKE ?', "%#{search}%"])
  end
end
