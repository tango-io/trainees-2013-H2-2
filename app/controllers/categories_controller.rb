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
    category = Category.find(params[:id]);
    @name_section = category.name
    @hash_filter_project = Hash.new
    @hash_filter_project["Popular This Week"] = category.projects.order("countvisit DESC").take(3)
    @hash_filter_project["Recently Succesfully funded"] = category.projects.order("created_at DESC").take(6)
    @hash_filter_project["Recent Updates"] = category.projects.order("updated_at DESC").take(3)
    @categories = Category.order("name ASC")

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
