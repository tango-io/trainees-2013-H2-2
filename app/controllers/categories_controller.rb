class CategoriesController < ApplicationController
  def index
  end
  
  def show
    @category = Category.find(params[:id]);
    @name_section = @category.name
    @projects_section = @category.projects.first(3)
    @categories = Category.order("created_at")
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params_category)
      redirect_to category.path
    else
      render 'edit'
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to discovers_path
  end
  
  def params_category
    params.require(:category).permit(:name)
  end
end
