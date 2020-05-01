class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      contact = Contact.find(params[:id]) #contact_mailer.rbの引数を指定
      contact.update(contact_params)
      user = contact.user
      ContactMailer.send_when_admin_reply(user, contact).deliver
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
