class DiscoveriesController < ApplicationController
  def index
    @projects = Project.all
  end

end
