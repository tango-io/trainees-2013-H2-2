class AddColumnCityToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :city, :string
  end
end
