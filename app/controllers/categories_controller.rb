class CategoriesController < ApplicationController
  def index
  end
  def show
    @category = Category.find(params[:id]);
    @projects_category = @category.projects.first(3)
  end
end
