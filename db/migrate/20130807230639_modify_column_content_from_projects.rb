class ModifyColumnContentFromProjects < ActiveRecord::Migration
  def change
    change_column :projects, :content, :text
  end
end
