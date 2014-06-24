module Users
class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comments_params)

    if @comment.save
      redirect_to [:users,@post],notice: 'Commented'
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @comment = @post.comments.delete
  end


  private

  def comments_params
    all_params = params.require(:comment).permit(:text, :user_id,:rate)
    all_params[:user_id] = current_user.id  if current_user
    all_params
  end
end
end