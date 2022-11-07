class LikesController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @like = @post.likes.create(like_params)
    redirect_to user_posts_path(current_user)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @like = @post.likes.find_by(like_params)
    @like.destroy
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
end
