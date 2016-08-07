class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # call the configured params 
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :resource, :resource_name, :devise_mapping
  
  
  # protect the database, while allowing these fields to be updated.
  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:displayname, :email, :password, :password_confirmation, :remember_me, :firstname, :lastname)
  end

  devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    user_params.permit(:login, :displayname, :email, :password, :remember_me)
  end

  devise_parameter_sanitizer.permit(:account_update) do |user_params|
    user_params.permit(:displayname, :email, :password, :password_confirmation, :current_password, :firstname, :lastname, :city, :country, :bio, :userphoto, :usercover)
  end
  end


end
