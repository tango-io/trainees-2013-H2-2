class ChangeRowAuthorProjects < ActiveRecord::Migration
  def change
    rename_column :projects, :author, :user_id
  end
end
