class AddFieldCounttoProject < ActiveRecord::Migration
  def change
    add_column :projects, :countvisit, :integer
  end
end
