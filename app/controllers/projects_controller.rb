class ProjectsController < ApplicationController
  def index
    @project = Project.new
    @categories = Category.all
    respond_to do |format|
      format.json { render json: @categories }
      format.html { render html: @categories }
    end
  end

  def new
    @project = Project.new
    @categories = Category.all
  end

  def show
    @projects = Project.all
  end

  def create
    @categories = Category.all
    @projects = Project.new(project_params)
    #@projects.save
    if @projects.save
      render 'index'
    end
  end

private

  def project_params
    params.require(:project).permit(:name,:description, :content, :picture, :video, :goal, :period, :category_id)
  end

end
