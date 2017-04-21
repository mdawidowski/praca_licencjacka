class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :check_captcha, only: [:create] # Change this to be any actions you want to protect.

  private
  def check_captcha
    unless verify_recaptcha
      self.resource = resource_class.new sign_up_params
      respond_with_navigational(resource) { render :new }
    end
  end

  def sign_up_params
    params.require(:user).permit(:login, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:login, :email, :password, :password_confirmation, :current_password)
  end
end
