class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  # Make Devise work with JSON requests
  respond_to :json

  # Permit additional parameters for signup/login
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  protected

  # Devise strong parameters
  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end

  # Skip session storage (important for API-only apps)
  def skip_session
    request.session_options[:skip] = true
  end
end
