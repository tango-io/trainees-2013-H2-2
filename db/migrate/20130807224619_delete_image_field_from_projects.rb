class DeleteImageFieldFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :image
  end
end
