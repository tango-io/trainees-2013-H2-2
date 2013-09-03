class CommentsController < ApplicationController
  before_action :set_project_id
  def index
    @comments = Comment.approved(@project.id)
  end
  def create
    @comment = @project.comments.new(comment_params)
    @comment.save
    redirect_to :back
  end
  def approve_comment
    @message = Comment.find(params[:id])
    @message.approve
    redirect_to :back
  end
  private
  def set_project_id
    @project = Project.find(params[:project_id])
  end
  def comment_params
    params.require(:comment).permit(:project_id,:comment).merge(user_id: current_user.id)
  end
end
