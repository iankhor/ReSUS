class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:role, :email, :password, :password_confirmation)
    end
  end

  # rescue_from ActiveRecord::RecordNotFound do
  #   flash[:warning] = 'Resource not found.'
  #   redirect_back_or root_path
  # end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end


end
