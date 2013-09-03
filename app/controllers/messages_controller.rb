class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @comments = Comment.show_all(current_user.id)
  end

end
