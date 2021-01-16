class RegistrationsController < Devise::RegistrationsController
devise_for :users, controllers: { registrations: 'registrations' }

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  def user_params
    # NOTE: Using `strong_parameters` gem
    params.require(:user).permit(:password, :password_confirmation, :company, :phone, :lastname)
  end

end
