class BackersController < ApplicationController
 before_action :set_project_id

 def index
     
 end

 def new
  @backer = @project.backers.new
 end

 def create 
   @backer = @project.backers.new(backers_params)
   if @backer.save
     create_pledge(@backer.pledge_id)
     redirect_to @project
   else
     render "new"
   end
 end

 private

 def create_pledge(pledge_id)
   pledge = Pledge.find(pledge_id)
   pledge.count = pledge.count + 1
   pledge.update(:count => pledge.count)
 end
 def set_project_id
   @project = Project.find(params[:project_id])
 end

 def backers_params
   params.require(:backer).permit(:amount, :pledge_id, :project_id, :user_id)
 end
 
end
