class VendorRequestMessageController < ApplicationController

  layout "vendor_request_message"

  def index
    @messages = VendorRequestMessage.where(vendor_id: same_vendor)
  end

  def create
    @message = VendorRequestMessage.new(test_params)
    @message.vendor_id = same_vendor

    if @message.save
      sendMessage()
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

    puts "======== update called"
    @message = VendorRequestMessage.find(params[:id])

    cmd = params[:commit]

    if @message.update_attributes(test_params)
      sendMessage()
    else
      render :edit
    end
  end

  def edit
    @page_title = 'Edit Request Message'
    @message = VendorRequestMessage.find(params[:id])
  end

  def sendRequest
    @page_title = 'Send Request Message'
    @message = VendorRequestMessage.find(params[:id])
    render :edit
  end



  private

  def sendMessage


    if params[:commit] == 'Send'
      puts "========= url : " + @message.sent_to_url
      puts "========= message : " + @message.message_txt

      uri = URI.parse @message.sent_to_url

      http = Net::HTTP.new(uri.host, uri.port)

      req = Net::HTTP::Post.new(uri.request_uri)
      req.body = @message.message_txt
      req.content_type = 'text/xml'

      response = Net::HTTP.new(uri.host, uri.port).start { |http| http.request req}

      flash[:success] = "Request saved. Send not implemented"
      redirect_to vendor_request_message_index_path
    else
      redirect_to vendor_request_message_index_path
    end
  end


  def same_vendor
    current_user.vendor_id
  end

  def test_params
    params.require(:vendor_request_message).permit(:message_id, :message_txt, :description, :sent_to_url)
  end

  def flashes

  end


end
