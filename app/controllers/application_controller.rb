class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :formbox
  protect_from_forgery with: :exception
  include ApplicationHelper

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:lastname, :company, :phone ])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:lastname, :company, :phone])
  end

  def formbox
    @lead = Lead.new
  end
end

