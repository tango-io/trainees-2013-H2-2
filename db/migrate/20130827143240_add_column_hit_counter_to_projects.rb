class AddColumnHitCounterToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :hit_counter, :integer
  end
end
