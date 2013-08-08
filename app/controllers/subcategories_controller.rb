class SubcategoriesController < ApplicationController
  def index
    @categories = Category.first
    @projects_category = @categories.projects.all
    @subcategories_of = @categories.subcategories.all
  end
end
