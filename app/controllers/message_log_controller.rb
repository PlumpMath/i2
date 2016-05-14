class MessageLogController < ApplicationController

	layout "message_log"

	def index
		puts "===== iii"
		@logs = filter_by_vendor
	end

	private

	def filter_by_vendor
		MessageLog.find_by_sql(
			%Q[
			select message_log.* 
			  from message_log,
			       message,
			       package_group,
			       package,
			       vendor_packages
			 where vendor_packages.vendor_id = #{same_vendor}
			   and package.package_id = vendor_packages.package_id
			   and package_group.package_id = package.package_id
			   and message.package_group_id = package_group.package_group_id
			   and message_log.message_id = message.message_id
		])
	end

		private

	def same_vendor
		current_user.vendor_id
	end
end
