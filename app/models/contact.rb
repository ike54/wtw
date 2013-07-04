class Contact < ActiveRecord::Base
    before_save { email.downcase! }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }	
	validates :subject, presence: true, length: { maximum: 50 }
	validates :message, presence: true, length: { maximum: 5000 }
	private

	def contact_params
		params.require(:contact).permit(:name, :email, :subject, :message)
	end
end