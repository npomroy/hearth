class ContactMailer < ActionMailer::Base
    default to: 'npomroy@live.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        mail(from: email, subject: 'Hearth Contact Form Message')
    end
end