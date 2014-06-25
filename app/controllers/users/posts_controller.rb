module Users
  class PostsController < ApplicationController


    def index
      if params[:set_locale]
        redirect_to root_url(locale: params[:set_locale])
      else
        @posts = Post.all.order_desc.search(params[:search]).page(params[:page]).per(5)
        @newest = Post.last(5)
      end
    end

    def show
      @comments = Comment.create(params[:text])
      @post = Post.find(params[:id])
      @post_comments = @post.comments.order_desc
    end


    def new
      @post = Post.new
    end

    def create
      @post = Post.new(posts_params)
      if @post.save
        redirect_to [:user,@post], notice: 'create successfully'
      else
        render :new
      end
    end

    def edit
      @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])
      if @post.update_attributes(posts_params)
        redirect_to [:user,@post],notice: 'updated successfully'
      else
        render :new
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy


    end
  end
end