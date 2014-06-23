class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_filter :set_il8n_locale_from_params

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end

  protected

  def set_il8n_locale_from_params
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
        else
        flash.now[:notice ] = "#{params[:locale]} translation not available "
       logger.error flash.now[:notice]
      end
      end
  end

  def default_url_options
  { locale:  I18n.locale }
  end

end
