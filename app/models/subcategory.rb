class Subcategory < ActiveRecord::Base
  belongs_to :category foreign_key: 'category_id' :class_name => "Category" 
end
