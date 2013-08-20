class LoginsController < ApplicationController
  before_action :create_instance 
  def index
  end
  def new
  end
  def create
    Login.validate?(@login,login_params)
    if @login.errors.messages.empty?
      @login = Login.new(login_params)
      @login.save
      session[:user_id] = @login.id
    end
    render 'new'
  end
  def log_in
  end
  def login
    binding.pry
  end
  private
  def login_params
    params.require(:login).permit(:fullname,:email,:password,:reemail,:repassword)
  end
  def create_instance
    @login = Login.new
  end
end
