class FaqsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @faq    = @project.faqs.where(project_id: [@project.id])
  end

  def new
    @faqs = Faq.new
  end

  def create
    @project = Project.find(params[:project_id])
    @faq = @project.faqs.build(faq_params)
    if @faq.save
      redirect_to :back
    else
      render 'new'
    end
  end

  private
  def faq_params
    params.require(:faq).permit(:question, :answer, :project_id)
  end
end
