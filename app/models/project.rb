class Project < ActiveRecord::Base
  has_one :subcategory, :through => :category
  has_one :city
  has_many :comments
  has_many :pledges
  has_many :backers
end

