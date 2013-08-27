class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :load_general_vars
  
  def load_general_vars
   @categories = Category.order("name ASC")
   @sitemaps = Page.all
  end

end
