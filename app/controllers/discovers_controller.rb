class DiscoversController < ApplicationController
  def index
    @category = Category.first
    @categories = Category.all
    @projects_category = @category.projects.all
    @subcategories_of = @category.subcategories.all
  end
end
