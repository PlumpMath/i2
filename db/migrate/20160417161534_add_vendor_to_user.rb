class AddVendorToUser < ActiveRecord::Migration
  def change
  	add_column :users, :vendor_id, :integer
  	add_foreign_key :users, :vendors
  end
end
