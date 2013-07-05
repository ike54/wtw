class StaticPagesController < ApplicationController
	def index
		@contact = Contact.new
		@menu = MenuItems.all
	end
end
