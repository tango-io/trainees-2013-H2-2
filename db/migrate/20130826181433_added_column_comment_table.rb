class AddedColumnCommentTable < ActiveRecord::Migration
  def change
    add_column(:comments, :approved, :boolean, :default => false)
  end
end
