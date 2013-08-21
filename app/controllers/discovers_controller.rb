class DiscoversController < ApplicationController
  def index
    @name_section = 'Discover Projects'
    @subtitle = 'Passion, ideas, and ambition abound. Start exploring!'
    @category = Category.first
    @categories = Category.order("created_at") 
    @projects_section = @category.projects.first(3)
    @subcategories_of = @category.subcategories.all
  end
end
