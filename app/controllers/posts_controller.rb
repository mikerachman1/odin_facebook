class PostsController < ApplicationController
  def index
    #posts from current user and current users friends
    @user = current_user
    @friends = @user.friends
    @posts = @user.posts
    @friends.each do |friend|
      @posts << friend.posts
    end
  end
end
