class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    # Google recaptcha verification
    require 'net/http'
    uri = URI('https://www.google.com/recaptcha/api/siteverify')
    success = false

    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.use_ssl = true
      req = Net::HTTP::Post.new(uri.path)
      req.set_form_data('secret' => ENV["RECAPTCHA_SECRET"], 'response' => recaptcha_resp)

      resp = http.request(req)

      if ActiveSupport::JSON.decode(resp.body)["success"]
        success = true
      end
    end

    # Create of recaptcha successful
    if success
      @contact = Contact.new(contact_params)
      @contact.request = request
      if @contact.deliver
        flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
        @contact = Contact.new
        render :new
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end

    def recaptcha_resp
      params.require("g-recaptcha-response")
    end
end
