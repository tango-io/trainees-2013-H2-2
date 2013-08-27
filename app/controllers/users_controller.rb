class UsersController < ApplicationController
  before_filter :authenticate_user!

  layout 'kickstarter'

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:message] = "Changes Saved"
      redirect_to edit_user_path     
    else
      render :edit, errors: @user.errors
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :location, :time_zone, :biography, :avatar) 
  end

end
