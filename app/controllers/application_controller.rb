class ApplicationController < ActionController::Base
	 before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :authenticate_user!


    protect_from_forgery with: :exception
    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:year])
   devise_parameter_sanitizer.permit(:account_update, keys: [:year])

  
  end
end