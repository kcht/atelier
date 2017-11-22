class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    binding.pry
    params.require(:user).permit(:email, :password, :password_confirmation, :date_of_birth)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :date_of_birth)
  end
end