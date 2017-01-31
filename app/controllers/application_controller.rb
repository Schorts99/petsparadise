class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  devise_group :entity, contains: [:user, :member]
  before_action :configurar_strong_params, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

  protected
    def configurar_strong_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :phone,:conditions])
    end
end
