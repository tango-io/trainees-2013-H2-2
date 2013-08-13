class LoginsController < ApplicationController
  def index
    @login = Login.new
    render  :new
  end
  def new
    @login = Login.new
  end
  def create
    puts "loginparams #{loginParams}"

    binding.pry
  end
  def loginParams
    params.require(:login).permit(:fullname,:email,:reemail,:repassword)
  end
end

