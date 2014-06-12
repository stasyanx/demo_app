class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception


  #layout 'admin', :except => :login

  before_filter :require_admin_user, :except => [:login, :send_report]


  def require_admin_user
    #redirect_to '/admin/login' unless session[:admin] || Rails.env.test?
  end

end
