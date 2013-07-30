class ProjectsController < ApplicationController
  def index
    @category = Category.all
  end

end
