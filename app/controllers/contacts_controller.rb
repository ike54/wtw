class ContactsController < ApplicationController
	http_basic_authenticate_with :name => "westtexas", :password => "westtexas54", only: :index
	def index
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def new
		@contact = Contact.new
	end

	def create
  		@contact = Contact.new(contact_params)
  	  if @contact.save
  		flash[:success] = "Message Recieved!"
  		redirect_to root_path + '#contact'
  	  else
  	  	flash[:error] = @contact.errors.full_messages
  		redirect_to root_path + '#contact'
  	  end
  	end
  
   private

    def contact_params
      params.require(:contact).permit(:name, :email, :subject,
                                   :message)
    end

    protected

      def authenticate
        authenticate_or_request_with_http_basic do |username, password|
          username == "admin" && password == "test"
        end
      end
end
