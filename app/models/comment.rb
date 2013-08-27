class Comment < ActiveRecord::Base
 #attr_accessible :approved
  belongs_to :project
  belongs_to :user
  scope :approved, ->(project_id) do
    joins(:user).where(:project_id => project_id, :approved => :true).order("created_at DESC")
  end

end
