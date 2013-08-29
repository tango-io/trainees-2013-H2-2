class Comment < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  scope :approved_comments, ->(project_id) do
    joins(:user).where(project_id: project_id, approved: true).order("created_at DESC")
  end
  scope :non_approved_comments, ->(current_user_id) do
    joins(:project).where(projects: {user_id: current_user_id}, approved: false)
  end

end
