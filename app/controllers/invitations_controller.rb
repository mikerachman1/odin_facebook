class InvitationsController < ApplicationController
  def new
    user = current_user
    new_friend = User.find(params[:user_id])
    user.send_invitation(new_friend)
    flash.alert = 'Friend request sent'
    redirect_to users_path
  end
end
