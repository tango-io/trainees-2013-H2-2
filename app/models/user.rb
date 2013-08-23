class User < ActiveRecord::Base
  before_save :set_default_values

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  def set_default_values
     self.avatar = "no-img.png" unless self.avatar
  end

end
