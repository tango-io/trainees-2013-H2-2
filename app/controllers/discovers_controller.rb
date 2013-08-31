class DiscoversController < ApplicationController
  def index
    @name_section = 'Discover Projects'
    @subtitle = 'Passion, ideas, and ambition abound. Start exploring!'
    @category = Category.first
    @projects_section = @category.projects.first(3)
    
    hash = Hash.new
    @categories.order("created_at ASC").each{
      |cat|
      hash[cat.name]=cat.subcategories
    }

    respond_to do |format|
      format.json  { render json: hash }
      format.html { render html: @categories }
    end
  end
end
