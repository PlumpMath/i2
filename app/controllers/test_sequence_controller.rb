class TestSequenceController < ApplicationController

	layout "test_sequence"

	def index
		byebug
		puts "===== iii"
		@tests = TestSequence.where(vendor_id=same_vendor)
	end


	private

	def same_vendor
		current_user.vendor_id
	end

	def show
		@test = TestSequence.find(params[:id])
	end

end
