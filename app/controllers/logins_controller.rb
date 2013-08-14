class LoginsController < ApplicationController
  def index
    @login = Login.new
  end
  def new
    @login = Login.new
  end
  def create
    @login = Login.new
    Login.presence?(@login,loginParams)
    
    render 'new'

  end
  def loginParams
    params.require(:login).permit(:fullname,:email,:password,:reemail,:repassword)
  end
end

