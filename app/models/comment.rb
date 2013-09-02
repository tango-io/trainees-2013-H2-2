class Comment < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  scope :show_all, ->(current_user_id) do
    joins(:project).where(projects: {user_id: current_user_id})
  end

end
