class MessagesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @comments = Comment.show_all(current_user.id)
  end
  def approve_comment
    @comment = Comment.find(params[:id])
    @comment.approve
    redirect_to :back
  end
end
