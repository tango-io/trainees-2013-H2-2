class DiscoversController < ApplicationController
  def index
    @category = Category.first
    @categories = Category.all
    @projects_category = @category.projects.first(3)
    @subcategories_of = @category.subcategories.all
  end
end
