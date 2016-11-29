class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
##ASSOCIATIONS
 #user has many photos
has_many :photos
#user has many comments
has_many :comments
#user has many likes
has_many :likes
#user has many liked photos
 has_many :liked_photos, :through => :likes, :source => :photo

 ##VALIDATIONS
 validates :username,  :presence => true, :uniqueness => true
 validates :email,  :presence => true
 validates :password,  :presence => true
end
