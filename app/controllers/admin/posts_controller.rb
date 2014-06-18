module Admin
  class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to [:admin,@post], notice: 'create successfully'
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
      redirect_to [:admin,@post],notice: 'updated successfully'
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
     @post.destroy
    respond_to do |format|
      format.html{ }
      format.js
    end
  end

  private

  def posts_params
    params.require(:post).permit(:text,:title,:theme,:image)
  end

  end
end