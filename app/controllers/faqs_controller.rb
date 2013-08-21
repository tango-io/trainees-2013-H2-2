class FaqsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @faqs    = @project.faqs.where(project_id: [@project.id])
  end

  def new
    @faqs = Faq.new
  end

  def create
    @project = Project.find(params[:project_id])
    @faqs = @project.comment.new.(faqs_params)
    if @faqs.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  private
  def faq_params
    params.require(:faq).permit(:question, :answer, :project_id)
  end
end
