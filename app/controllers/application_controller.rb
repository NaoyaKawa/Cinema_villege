class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
    when User
      theaters_path
    when Admin
      admin_theaters_path
    end
  end
  
end
