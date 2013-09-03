class Comment < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  scope :show_all, ->(current_user_id) do
    joins(:project).where(projects: {user_id: current_user_id}).order("created_at DESC")
  end

  scope :approved, ->(project_id) do
    joins(:user).where(:project_id => project_id, :approved => :true).order("created_at DESC")
  end

end
