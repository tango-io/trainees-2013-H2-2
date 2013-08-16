class CommentsController < ApplicationController
  before_action :set_project_id
  def index
    @comments = @project.comments.where(:project_id => @project.id)
  end
  def create
    @comment = @project.comments.new(comment_params)
    @comment.save
    redirect_to :back
  end
  private
  def comment_params
    params.require(:comment).permit(:user_id,:comment,:project_id)
  end
  def set_project_id
    @project = Project.find(params[:project_id])
  end
end
