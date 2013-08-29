class ChangeFieldPeriod < ActiveRecord::Migration
  def change
    change_column :projects, :period, :string
  end
end
