class ProjectsController < ApplicationController
  def index
    @projects=Project.all
  end

  def new
    @projects = Project.new
  end

  def create

    @projects = Project.new(project_params)
    #@projects.save
    if @projects.save
      redirect_to projects_path
    end
  end

  def edit
    @project = Project.find(params[:id]);
  end

  def show
    @project = Project.find(params[:id]);
  end

  def project_params
    params.require(:project).permit(:name, :autor, :description, :goal)
  end


end
