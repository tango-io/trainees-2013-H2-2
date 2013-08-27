class SubcategoriesController < ApplicationController
  def index
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
end
