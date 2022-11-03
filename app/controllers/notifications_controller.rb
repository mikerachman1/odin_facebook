class NotificationsController < ApplicationController
  before_action -> { check_user(User.find(params[:user_id])) }
  
  def index
    @user = User.find(params[:user_id])
    @notifications = @user.notifications
  end

  private

  def check_user(user)
    unless user == current_user
      flash[:alert] = 'You can only view your own notifications'
      redirect_to root_path
    end
  end
end
