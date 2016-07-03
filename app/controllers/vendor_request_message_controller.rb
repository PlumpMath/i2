class VendorRequestMessageController < ApplicationController

  layout "vendor_request_message"

  require "rexml/document" 
  require 'ostruct'

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

  def results
    @message = VendorRequestMessage.find(params[:id])
    render :results
  end

  def show
    @ts = VendorRequestMessage.find(params[:id])
    render :results
  end

  def update
    puts "======== update called"
    @message = VendorRequestMessage.find(params[:id])

    cmd = params[:commit]

    if cmd == "Send"
      sendMessage()
    else
      if @message.update_attributes(test_params)
        sendMessage()
      else
        render :edit
      end
    end
  end

  def edit
    @page_title = 'Edit Request Message'
    @message = VendorRequestMessage.find(params[:id])
  end

  def sendRequest
    byebug
    @page_title = 'Send Request Message'
    @message = VendorRequestMessage.find(params[:id])
    render :send
  end



  private

  def formatXML(message)
    response = "";

    doc = REXML::Document.new(message)
    formatter = REXML::Formatters::Pretty.new
    formatter.compact = true

    formatter.write(doc, response)
    return response
  end

  def sendMessage
    if params[:commit] == 'Send'
      begin

        @response = OpenStruct.new
        @response.message = formatXML(@message.message_txt)

        uri = URI.parse @message.sent_to_url

        http = Net::HTTP.new(uri.host, uri.port)

        req = Net::HTTP::Post.new(uri.request_uri)
        req.body = @message.message_txt
        req.content_type = 'text/xml'

        reply = Net::HTTP.new(uri.host, uri.port).start { |http| http.request req}


        @response.code = reply.code
        @response.body = formatXML(reply.body)

        @page_title = 'Results'

        render :results
      rescue => e
        flash.now[:error] = "Request failed : " + e.message
        @response.code = "No Results"
        @response.body = "No Results"
        render :results
      end
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
