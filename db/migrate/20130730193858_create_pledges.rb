class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.string :project_id
      t.string :name
      t.string :description
      t.float :amount
      t.timestamps
    end
  end
end
