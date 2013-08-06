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
      @page.save

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

    end
    def update

    end
    def delete
    end

    private 

    def page_params
      params.require(:page).permit(:title, :content, :style)
    end


end
