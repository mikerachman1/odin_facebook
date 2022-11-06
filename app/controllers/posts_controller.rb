class PostsController < ApplicationController
  def index
    #posts from current user and current users friends
    @user = User.find(params[:user_id])
    @friends = @user.friends
    @posts = []
    @user.posts.map { |post| @posts << post }
    @friends.each do |friend|
      friend.posts.map { |post| @posts << post }
    end
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_posts_path(@user)
  end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
  end
end
