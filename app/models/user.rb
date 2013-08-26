class User < ActiveRecord::Base
  before_save :set_default_values

  has_many :projects, :dependent => :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  mount_uploader :avatar, PictureUploader   
  def set_default_values
     self.avatar = "no-img.png" unless self.avatar
  end


  has_many :approved_comments , -> { where approved: true }, class_name: 'Comment'

end
