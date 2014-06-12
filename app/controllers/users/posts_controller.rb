module Users
  class  PostsController < ApplicationController


    def index
      @posts = Post.all.order('created_at DESC')
    end

    def show
      @comments = Comment.create(params[:text])
      @post = Post.find(params[:id])

    end
  end
end