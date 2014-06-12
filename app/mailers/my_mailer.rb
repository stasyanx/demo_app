class MyMailer < ActionMailer::Base
  default from: 'notifications@example.com'

  def welcome_email(user,post)
    @user = user
    @url  = 'http://example.com/login'
    @post = post
    mail(to: @user,
         subject: 'Post has been created'"#{@post.title}""#{@post.text}") do |format|
      format.html {  }
      format.text { render text: 'Render text' }
    end
  end
end