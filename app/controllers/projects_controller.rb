class ProjectsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show] 
  
  def index
    @project = Project.new
    @subcategories = Subcategory.all
  end

  def new
    @project = Project.new
    @subcategories = Subcategory.all
  end

  def show
    @project = Project.find(params[:id])
    @pledges = Pledge.where(:project_id => @project.id)
    @faqs    = Faq.where(project_id: [params[:id]])
  end

  def create
    @subcategories = Subcategory.all
    @project = Project.new(project_params)
    category = Subcategory.find("#{@project.subcategory_id}")
    @project.category_id = category.category_id
    @project.hit_counter = 0
    if (@project.video =~ /^(https?:\/\/)?(www\.)?youtube.com\/watch\?v=([a-z0-9-]+)/i) 
     @project.video = format_video(@project.video)
    end
    if @project.save 
      @newproject = Project.last
      format_period = @newproject.created_at + params["project"]["period"].to_i.days
      Project.update(@newproject.id,period:format_period )
      redirect_to @project
    else
      render "new"
    end
  end

  def edit
    @project = Project.find(params[:id])
    video = @project.video.split("embed/")
    video_user_format = "http://www.youtube.com/watch?v=" + video[1]
    @video = video_user_format
    @subcategories = Subcategory.all
  end

  def update
    @subcategories = Subcategory.all
    @project = Project.find(params[:id])
    if (project_params['video'] =~ /^(https?:\/\/)?(www\.)?youtube.com\/watch\?v=([a-z0-9-]+)/i) 
      @project.update(:video => format_video(project_params['video']))
    end  
    if  @project.update_attributes(project_params)
      category = Subcategory.find(" #{@project.subcategory_id}")
      category_id = category.category_id
      @project.update(:category_id => category_id)
      redirect_to show
    else
      render 'edit'
    end
  end
 
private

  def format_video(video)
    video_parts = video.split('=')
    video_format = "//www.youtube.com/embed/" + video_parts[1]
  end
  def project_params
    params.require(:project).permit(:name,:description, :content, :picture, :video, :goal, :period, :subcategory_id, :location, :user_id )
  end

end
