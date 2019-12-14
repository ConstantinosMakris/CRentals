#controller for the home page
class HomeController < ApplicationController

  def home
  end

  #action that takes you to the contact page
  def contact
  end

  #action that takes you to the aboutUs page
  def aboutUs
  end

  #action that takes you to the rentals page
  def rentals
  end

  #action for the contact page that delivers the email if its correct
  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

    redirect_to root_path
  end

end
