class UsersController < ApplicationController
  def index
    if current_user.present?
      redirect_to missionboard_path
    else
      @users = User.all
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to missionboard_path(user_id: @user.id)
    else
      render 'index'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to missionboard_path
    else
      render 'index'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :photo, :mood_id)
  end
end
