class PagesController < ApplicationController
    def index
    # create json for angular
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
      # create json for angular
      @page = Page.find(params[:id])      
      #@page = Page.friendly.find(params[:id])      
      respond_to do |format|
         format.json { render json: @page }
         format.html { render html: @page }
      end
    end
    def edit
      @page = Page.find(params[:id])      
    end
    def update
      @page = Page.find(params[:id])
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
end