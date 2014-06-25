class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  mount_uploader :avatar, ImageUploader

  has_many :posts
  has_many :comments
  has_many :images

  def name
   "#{first_name}" +' '+ "#{last_name}"
  end

end
