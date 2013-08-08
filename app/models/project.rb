class Project < ActiveRecord::Base

  mount_uploader :picture, PictureUploader   
  belongs_to :category
  belongs_to :subcategory
  has_one :city
  has_many :comments
  has_many :pledges
  has_many :backers
end

