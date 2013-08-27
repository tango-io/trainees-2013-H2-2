class SetDefaultValueToAvatar < ActiveRecord::Migration
  def change
    remove_column :users, :avatar
    add_column :users, :avatar, :string, :null => 'false' , :default => "no-img.png"
  end
end
