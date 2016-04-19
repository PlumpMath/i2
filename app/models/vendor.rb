class Vendor < ActiveRecord::Base
	self.table_name = 'vendor'
    self.primary_key = :vendor_id
	has_and_belongs_to_many :packages
end
