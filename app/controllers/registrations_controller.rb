class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  def create
    phone = params[:user][:phone]
    phone =  phone.gsub(/[^\d]/, '')
    super
    resource.update_attributes(phone: phone)
  end

  protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:first_name, :last_name,
        :email, :password, :password_confirmation, :phone)
    end
  end

end