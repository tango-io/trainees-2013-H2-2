class AddRowsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar,    :string
    add_column :users, :name,      :string
    add_column :users, :location , :string
    add_column :users, :time_zone, :string
    add_column :users, :biography, :text
  end
end
