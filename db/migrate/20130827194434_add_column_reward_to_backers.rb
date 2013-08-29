class AddColumnRewardToBackers < ActiveRecord::Migration
  def change
    add_column :backers, :pledge_id, :integer 
  end
end
