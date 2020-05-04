class ContactMailer < ApplicationMailer

  def send_when_user_contact(contact) #メソッドに対して引数を設定
    @contact = contact
    mail to: contact.email, subject: '【World Brands】Thank you for your inquiry'
  end
end
