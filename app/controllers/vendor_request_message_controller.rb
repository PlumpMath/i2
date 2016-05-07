class VendorRequestMessageController < ApplicationController

	layout "vendor_request_message"

	def index
		@messages = VendorRequestMessage.where(vendor_id: same_vendor)
	end

	def create
		@message = VendorRequestMessage.new(test_params)
		@message.vendor_id = same_vendor


		if @message.save
			redirect_to vendor_request_message_index_path
		else
			render index
		end
	end

	def destroy
		@msg = VendorRequestMessage.find(params[:id])
		@msg.destroy

		redirect_to vendor_request_message_index_path
	end


	def show
		@ts = VendorRequestMessage.find(params[:id])
	end

	def update
		@message = VendorRequestMessage.find(params[:id])

		if @message.update_attributes(test_params)
			flash[:success] = "Request Message Updated"
			redirect_to vendor_request_message_index_path
		else
			rendor :edit
		end
	end

	def edit
		@message = VendorRequestMessage.find(params[:id])
	end


	private

	def same_vendor
		current_user.vendor_id
	end

	def test_params
		params.require(:vendor_request_message).permit(:message_id, :message_txt, :description, :sent_to_url)
	end

	def flashes

	end


end
