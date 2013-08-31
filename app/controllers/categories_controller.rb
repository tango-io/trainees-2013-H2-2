class CategoriesController < ApplicationController
  def index
  end
 
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params_category)
    if @category.save
      redirect_to @category
    else
      render 'new'
    end
    
  end

  def show
    @category = Category.find(params[:id]);
    @name_section = @category.name
    @projects_section = @category.projects.first(3)
    @categories = Category.order("created_at")
    respond_to do |format|
      format.json { render json: @categories }
      format.html { render html: @categories }
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(params_category)
      redirect_to category_path
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
