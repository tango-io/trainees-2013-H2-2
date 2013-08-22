class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :load_general_vars,:require_login
  def load_general_vars
    @categories = Category.all
    @sitemaps = Page.all
  end
  def require_login
     unless session[:user_id]
       redirect_to logins_log_in_path(@logins)
     else
       redirect_to kickstarter_path
     end
  end

end
