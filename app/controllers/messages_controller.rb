class MessagesController < ApplicationController
  def index
    @messages = Comment.non_approved_comments(current_user.id)
  end
end
