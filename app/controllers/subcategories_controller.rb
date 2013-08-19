class SubcategoriesController < ApplicationController
  def index
  end

  def show
    @subcategory = Subcategory.find(params[:id]);
    @name_section = @subcategory.name
    @projects_section = @subcategory.projects.all
    @categories = Category.order("created_at")
  end
end
