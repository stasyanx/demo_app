class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_filter :set_il8n_locale_from_params
  after_filter :store_location


  def store_location
    session[:previous_url] = request.fullpath
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def after_sign_out_path_for(resource)
    session[:previous_url] || root_path
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
