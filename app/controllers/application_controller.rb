class ApplicationController < ActionController::Base
  #deviseのstrong parametersを設定
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  
  
end
