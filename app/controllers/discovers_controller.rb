class DiscoversController < ApplicationController
  def index
    @categories = Category.last
    @projects_category = @categories.projects.all
    @subcategories = @categories.subcategories.all
  end
end
