class ChangeIdTypesInAllDatabase < ActiveRecord::Migration
  def change
## Backers
    remove_column :backers, :user_id
    add_column    :backers, :user_id,    :integer
    remove_column :backers, :project_id
    add_column    :backers, :project_id, :integer
## Comments
    remove_column :comments, :user_id
    add_column    :comments, :user_id, :integer
## Pledges
    remove_column :pledges, :project_id
    add_column    :pledges, :project_id, :integer
## Projects
    remove_column :projects, :user_id
    add_column    :projects, :user_id, :integer
  end
end
