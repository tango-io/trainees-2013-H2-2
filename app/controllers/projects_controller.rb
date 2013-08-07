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
    #@projects = Project.all
    @project = Project.find(params[:id]);
  end

  def create
    @categories = Category.all
    @projects = Project.new(project_params)
    #@projects.save
    cad = @projects.video.split('=')
    video2 = "//www.youtube.com/embed/" + cad[1]
    @projects.video = video2
    if @projects.save
      render 'index'
    end
  end

private

  def project_params
    params.require(:project).permit(:name,:description, :content, :picture, :video, :goal, :period, :category_id)
  end

end
