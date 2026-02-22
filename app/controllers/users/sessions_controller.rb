class Users::SessionsController < Devise::SessionsController
  respond_to :json

  # Skip session storage
  before_action :skip_session, only: [:create]

  private

  def skip_session
    request.session_options[:skip] = true
  end

  # Only override response JSON
  def respond_with(resource, _opts = {})
    render json: { message: 'Logged in successfully.', user: resource }, status: :ok
  end

  def respond_to_on_destroy(*_args)
    render json: { message: "Logged out successfully." }, status: :ok
  end
end
