class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to:"galerie.crane@gmail.com", subject: "La galerie"
  end
end
