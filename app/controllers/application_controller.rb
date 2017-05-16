class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?
  private

  def default_url_options options = {}
    {locale: I18n.locale}.merge options
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit :identify_number, :password, :remember_me
    end
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit :identify_number, :password, :name, :school_id
    end
  end
end
