class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def board_users
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.mood = Mood.first
    if @user.save
      redirect_to enter_path(user_id: @user.id)
    else
      render 'index'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render 'index'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo, :mood_id)
  end
end
