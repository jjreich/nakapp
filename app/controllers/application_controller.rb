class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(users)
    root_path
  end

  protected

  def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:firstName, :lastName])
	devise_parameter_sanitizer.permit(:sign_in, keys: [:firstName, :lastName])
	devise_parameter_sanitizer.permit(:account_update, keys: [:firstName, :lastName])
  end 
end
