class AddColumnStockToPledges < ActiveRecord::Migration
  def change
    add_column :pledges, :stock, :integer
  end
end
