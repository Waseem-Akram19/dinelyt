class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  # Disable session storage completely
  before_action :skip_session, only: [:create]

  private

  def skip_session
    request.session_options[:skip] = true
  end

  # Override Devise's sign_up to avoid automatic sign_in
  def sign_up(resource_name, resource)
    # Do nothing here — prevents Devise from writing to session
  end

  # Respond JSON after signup
  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: { message: 'Signed up successfully.', user: resource }, status: :created
    else
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
