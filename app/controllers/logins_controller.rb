class LoginsController < ApplicationController
  def index
    @login = Login.new
  end
  def new
    @login = Login.new
  end
  def create
    @login = Login.new(loginParams)
    if @login.save
      render 'new'
    else
      render 'new'
    end
  end
  def loginParams
    params.require(:login).permit(:fullname,:email,:password,:reemail,:repassword)
  end
end
