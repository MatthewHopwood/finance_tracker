class User::RegistrationsController < Devise::RegistrationsController
  before_action :create_configure_permitted_parameters, only: [:create]
  before_action :update_configure_permitted_parameters, only: [:update]

  protected

  def create_configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
  end
  
  def update_configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name])
  end
end