class ApplicationController < ActionController::Base
	include Pagy::Backend

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :cache_bar_items

  protected

  def cache_bar_items
    @my_bar_items = current_user.relative_bar_items.map(&:name) if user_signed_in?
  end

  def configure_permitted_parameters
    attributes = [:name, :email]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
