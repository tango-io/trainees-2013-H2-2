class Login < ActiveRecord::Base
  attr_accessor :reemail
  attr_accessor :repassword
  validates :fullname, :email, :password, :repassword, :reemail, presence: true
end
