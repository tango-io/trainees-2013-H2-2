class FirstMigration < ActiveRecord::Migration
  def change

    create_table :pages do |t|
      t.string :title
      t.string :content
      t.string :slug
      t.timestamps
    end

    create_table :projects do |t|
      t.string  :name
      t.string  :author
      t.string  :description
      t.string  :content
      t.string  :image
      t.string  :video
      t.float   :goal
      t.integer :period
      t.string  :coments
      t.string  :category_id
      t.string  :subcategory_id
      t.string  :tags
      t.string  :faqs
      t.string  :backers
      t.string  :pledge
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
    
    create_table :subcategories do |t|
      t.integer :category_id
      t.string  :name
      t.timestamps
    end

    create_table :pledges do |t|
      t.string :project_id
      t.string :name
      t.string :description
      t.float  :amount
      t.timestamps
    end

    create_table :comments do |t|
      t.string :project_id
      t.string :user_id
      t.string :comment
      t.timestamps
    end

    create_table :backers do |t|
      t.string :user_id
      t.string :project_id
      t.float  :amount
      t.timestamps
    end

    create_table :cities do |t|
      t.string  :name
      t.integer :total
      t.timestamps
    end 
  end
end
