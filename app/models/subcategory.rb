class Subcategory < ActiveRecord::Base
  belongs_to :category, class_name: "Category"
end
