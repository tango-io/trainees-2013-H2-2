class PledgesController < ApplicationController
before_action :set_project
 def index
 end
 def new
   @pledge = @project.pledges.new
 end

 def show
   @pledge = @project.pledges.find(params[:id])
 end

 def create
   @pledge = @project.pledges.new(pledges_params)
   date = @pledge.date.split("/")
   month, day, year = date[0], date[1], date[2]
   @pledge.date = Date.new(year.to_i, month.to_i, day.to_i)
   @pledge.count = 0

   if @pledge.save 
     flash[:notice] = "Pledge has been created."
     redirect_to @project
   else
     render "new"
   end
 end



 
 private
 def set_project
   @project = Project.find(params[:project_id])
 end
 

 def pledges_params
  params.require(:pledge).permit(:name, :description, :project_id, :amount, :date, :stock) 
 end
end
