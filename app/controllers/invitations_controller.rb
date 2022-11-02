class InvitationsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @invitation = @user.invitations.create(invitation_params)
    redirect_to user_path(@user)
  end

  private
  def invitation_params
    params.require(:invitation).permit(:user_id, :friend_id, :confrimed)
  end
end
