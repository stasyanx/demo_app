module Admin
  class AdminController < ActionController::Base

    before_filter :is_admin_pwd?, :except => [:login]

    layout 'admin'


    def is_admin_pwd?
      unless session[:admin]
        redirect_to admin_login_path
      end
    end

  end
end