class LoginsController < ApplicationController
  before_action :require_login
  def index
    @login = Login.new
  end
  def new
    @login = Login.new
  end
  def create
    @login = Login.new
    Login.validate?(@login,login_params)
    if @login.errors.messages.empty?
      @login = Login.new(login_params)
      @login.save
      session[:user_id] = @login.id
    end
    binding.pry
    render 'new'
  end
  def login_params
    params.require(:login).permit(:fullname,:email,:password,:reemail,:repassword)
  end
  def require_login
    unless session[:user_id]
      redirect_to :action =>'new'
    else
     render 'index'
    end
  end
end
