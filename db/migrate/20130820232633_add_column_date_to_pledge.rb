class AddColumnDateToPledge < ActiveRecord::Migration
  def change
   add_column :pledges, :date, :string
   add_column :pledges, :count, :integer
  end
end
