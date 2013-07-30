class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :author
      t.string :description
      t.string :content
      t.string :image
      t.string :video
      t.float :goal
      t.integer :period
      t.string :coments
      t.string :categories
      t.string :tags
      t.string :faqs
      t.string :backers
      t.string :pledge

      t.timestamps
    end
  end
end
