class AddApprovedAndAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :approved, :boolean, :default => false, :null => false
    add_column :users, :admin, :boolean, :default => false, :null => false
  end
end
