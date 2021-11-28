class ContactsController < ApplicationController
   skip_before_action :authenticate_user!, only: %i[index create new]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
     authorize @contact
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
    else
      render :new
    end
  end

  def thanks
  end

  private
  def contact_params
    params.permit(:last_name, :first_name, :phone, :email, :content)
  end
end
