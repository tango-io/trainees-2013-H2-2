class CommentsController < ApplicationController
  before_action :set_project_id
  def index
    @comments = @project.comments.where(:project_id => @project.id).order("created_at DESC")
  end
  def create
    @comment = Comment.new
    @comment.user_id    = current_user.id
    @comment.project_id = @project.id
    @comment.comment    = params[:comment][:comment]
    @comment.save
    redirect_to :back
  end
  private
  def set_project_id
    @project = Project.find(params[:project_id])
  end
end
