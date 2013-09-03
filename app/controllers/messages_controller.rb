class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @coments = Comment.show_all(current_user.id)
  end

end
