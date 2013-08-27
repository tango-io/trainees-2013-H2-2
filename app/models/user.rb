class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, PictureUploader   

  before_save :set_default_values
  has_many :projects, :dependent => :destroy

  def set_default_values
    self.avatar = "no-img.png" unless self.avatar
  end

end
