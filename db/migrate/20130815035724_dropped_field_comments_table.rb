class DroppedFieldCommentsTable < ActiveRecord::Migration
  def change
    remove_column(:comments, :project_id)
  end
end
