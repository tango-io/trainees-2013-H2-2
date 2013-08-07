class AddPictureFieldToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :picture, :string
  end
end
