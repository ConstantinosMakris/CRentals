# controller for the application
class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller? # allows parameters in the devise gem

  protected

  helper_method :is_admin? #helper method for the is_admin? action

      # action to allow parameters in the devise gem
     def configure_permitted_parameters
         devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :username, :first_name, :last_name, :age, :telephone) } #to sign up the user
         devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :current_password, :username, :first_name, :last_name, :age, :telephone) } #to update the user
     end

     #action to check if the user is admin
     def is_admin?
       signed_in? ? current_user.admin : false
     end
end
