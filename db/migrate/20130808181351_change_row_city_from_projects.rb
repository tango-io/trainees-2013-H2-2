class ChangeRowCityFromProjects < ActiveRecord::Migration
  def change
    rename_column :projects, :city, :location
  end
end
