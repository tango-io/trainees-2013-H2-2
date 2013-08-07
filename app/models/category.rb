class Category < ActiveRecord::Base
  has_many :projects
  has_many :subcategories, class_name: "Subcategory"
end
