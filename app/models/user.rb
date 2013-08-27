class User < ActiveRecord::Base
  before_save :set_default_values

  has_many :projects, :dependent => :destroy
  has_many :comments 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, PictureUploader   


  def set_default_values
    self.avatar = "no-img.png" unless self.avatar
  end
end
