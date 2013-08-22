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
    @id = Login.where("email = :x AND password = :y",{x: log_in_params[:email], y: log_in_params[:password]})
    unless @id[0]      
      @login.errors.add("Incorrect".parameterize.underscore.to_sym,"User dont match please enter againg ")
      render 'log_in'
    else
      create_session
      redirect_to '/'
    end      
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
  def create_session
    session[:user_id] = @id      
  end
end
