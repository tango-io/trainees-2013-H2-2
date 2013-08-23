class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  before_filter :is_admin?, :except => [:show]

  def index
    @page = Page.all
    respond_to do |format|
      format.json { render json: @page }
      format.html { render html: @page }
    end
  end

  def new 
    @page = Page.new         
  end

  def create
    @page = Page.new(page_params)
    if @page.save        
      render 'index'
    else
      render 'new'
    end
  end

  def show
    #      @page = Page.find(params[:id])      
    @page = Page.friendly.find(params[:id])      
    respond_to do |format|
      format.json { render json: @page }
      format.html { render html: @page }
    end
  end

  def edit
    @page = Page.find(params[:id])      
  end

  def update
    @page = Page.friendly.find(params[:id])
    if @page.update(page_params)
      redirect_to @page
    else
      render 'edit'
    end 
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to @page
  end

  private 
  def page_params
    params.require(:page).permit(:title, :content, :style)
  end

  def is_admin?
    unless current_user.admin?
      flash[:error] = "You must be an Admin to access this section"
      redirect_to root_path
    end
  end
end
