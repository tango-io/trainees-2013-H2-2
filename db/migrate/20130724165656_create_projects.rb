class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :autor
      t.string :description
      t.string :goal
      t.timestamps
    end
  end
end
