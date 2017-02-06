class MissionboardController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @users = User.all
    @roles = Role.all
  end
end
