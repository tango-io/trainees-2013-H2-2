class LoginsController < ApplicationController
  before_action :create_instance 
  def index
  end
  def new
  end
  def create
    Login.validate?(@login,log_up_params)
    if @login.errors.messages.empty?
      @login = Login.new(log_up_params)
      @login.save
      session[:user_id] = @login.id
    end
    render 'new'
  end
  def log_in
  end
  def login   
    if Login.where("email = :x AND password = :y",{x: log_in_params[:email], y: log_in_params[:password]}).present?
      puts "yes"
    end
      
    binding.pry
  end
  private
  def log_up_params
    params.require(:login).permit(:fullname,:email,:password,:reemail,:repassword)
  end
  def log_in_params
    params.require(:login).permit(:email,:password)
  end
  def create_instance
    @login = Login.new
  end
end
