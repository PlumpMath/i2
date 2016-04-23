class VendorsController < ApplicationController

	layout "vendors"

	def index
		puts "========== index"
		@vendors = Vendor.all
	end

	def show
		puts "========== show"
		@vendor = Vendor.find(params[:id])
	end

	def new
		puts "========== new"
	end

	def edit
		puts "========== edit"
		@vendor = Vendor.find(params[:id])
		puts "vendor name #{@vendor.name}"
	end

	def create
		puts "========== create"
		@vendor = Vendor.new(vendor_params)

		if @vendor.save
			redirect_to @vendor
		else
			render 'new'
		end
	end

	def update
		@vendor = Vendor.find(params[:id])
		
		@vendor.packages.destroy_all
		@vendor.packages << Package.find(params[:vendor][:package_ids].reject { |c| c.empty? })


		if @vendor.update_attributes(vendor_params)
			flash[:success] = "Vendor updated"
			redirect_to vendors_path
		else
			rendor :edit
		end
	end

	def destroy
		puts "========== destroy"
		@vendor = Vendor.find(params[:id])
		@vendor.destroy

		redirect_to vendors_path
	end



	private
	def vendor_params
		params.require(:vendor).permit(:name)
	end

	def flashes

	end
end
