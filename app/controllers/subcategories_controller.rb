class SubcategoriesController < ApplicationController
  def index
  end

  def show
    @subcategory = Subcategory.find(params[:id]);
    @projects_subcategory = @subcategory.projects.all
    @categories = Category.all
  end
end
