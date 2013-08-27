class DiscoversController < ApplicationController
  def index
    @name_section = 'Discover Projects'
    @subtitle = 'Passion, ideas, and ambition abound. Start exploring!'    
    @hash_filter_project = Hash.new
    @hash_filter_project["Popular This Week"] = Project.order("countvisit DESC").take(3)
    @hash_filter_project["Recently Successfully Funded"] = Project.order("created_at DESC").take(6)
    @hash_filter_project["Recent Updates"] = Project.order("updated_at DESC").take(3)
  end
  def popular
    @name_section = "Population"
    @subtitle = "These projects are generating the most buzz this week, both on Kickstarter and off."
    @hash_filter_project = Hash.new
    @categories.select('id,name').each{
      |id|
      query = id.projects.order("created_at DESC").take(3)
      if !query.empty?
        @hash_filter_project["#{id.name}"] = query
      end
    }

  end
end
