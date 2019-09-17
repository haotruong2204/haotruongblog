class ApplicationController < ActionController::Base
  before_action :set_locale

  private
  def after_sign_out_path_for resource_or_scope
    return new_admin_admin_session_path if resource_or_scope == :admin_admin

    super
  end

  def after_sign_in_path_for resource_or_scope
    return admin_root_path if resource_or_scope.is_a?(Admin)

    super
  end

   def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  def default_url_options
    {locale: I18n.locale}
  end

end
