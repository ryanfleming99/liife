class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end


 before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
 # For additional fields in app/views/devise/registrations/new.html.erb
 devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

 #    # For additional in app/views/devise/registrations/edit.html.erb
 devise_parameter_sanitizer.permit(:account_update, keys: [:description, :photo])
end
 #  end


end
