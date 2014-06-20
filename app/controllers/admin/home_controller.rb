module Admin
class HomeController  < Admin::AdminController

  skip_before_filter  :verify_authenticity_token
  layout false

  def login
    if params[:pwd].present? &&
        Digest::SHA2.hexdigest(params[:pwd]) == 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'
      session[:admin] = true
      redirect_to   admin_posts_path
    end
  end

  end
end