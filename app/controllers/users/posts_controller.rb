module Users
  class PostsController < ApplicationController


    def index
      if params[:set_locale]
        redirect_to root_url(locale: params[:set_locale])
      else
        @posts = Post.all.order_desc.search(params[:search])
      end
    end

    def show
      @comments = Comment.create(params[:text])
      @post = Post.find(params[:id])
      @post_comments = @post.comments.order_desc
    end
  end
end