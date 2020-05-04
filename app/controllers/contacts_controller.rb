class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_when_user_contact(@contact).deliver
      redirect_to new_contact_path
    else
      render "new"
    end
  end

  def contact_params
    params[:contact].permit(
      :user_name,
      :email,
      :inquiry,
    )
  end

end
