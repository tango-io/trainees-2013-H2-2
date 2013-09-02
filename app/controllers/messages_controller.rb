class MessagesController < ApplicationController
  def index
    @messages = Comment.non_approved_comments(current_user.id)
  end
  def approve_comment
    @message = Comment.find_by_id(params[:id])
    @message.approve
    redirect_to :back
  end
end
