class CreateBackers < ActiveRecord::Migration
  def change
    create_table :backers do |t|
      t.string :user_id
      t.string :project_id
      t.float :amount
      t.timestamps
    end
  end
end
