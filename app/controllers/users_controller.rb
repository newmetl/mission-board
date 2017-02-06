class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to missionboard_path(user_id: @user.id)
    else
      render 'index'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo)
  end
end
