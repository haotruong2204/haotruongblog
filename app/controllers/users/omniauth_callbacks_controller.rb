class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.create_from_provider_data request.env["omniauth.auth"]

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      flash[:error] = check_errors
      redirect_to root_path
    end
  end

  def failure
    flash[:error] = t("common.errors.login_failed")
    redirect_to root_path
  end

  private

  def check_errors
    if @user.try(:errors).try(:messages) && @user.errors.messages[:email] &&
      @user.errors.messages[:email].include?(t("common.errors.dupplicate_mail"))

      t("common.errors.dupplicate_mail")
    else
      t("common.errors.login_failed")
    end
  end
end
