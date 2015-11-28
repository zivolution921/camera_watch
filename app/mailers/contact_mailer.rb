class ContactMailer < ActiveMailer::Base
	default to: "ziv921@yahoo.com"

	def contact_email(name, email, body)
		@name = name
		@email = email
		@body = body

		mail(from: email, subject: "Contact Form Message")
	end
end