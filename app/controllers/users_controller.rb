class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.order(:name)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # TODO: Make mood optional
    @user.mood = Mood.first
    if params[:commit] == 'Anlegen und Los!'
      @board = Board.find(params[:board_id])
      @user.boards << @board
      if @user.save
        redirect_to board_enter_path(@board, user_id: @user.id)
      else
        redirect_to board_users_path(@board)
      end
    else
      if @user.save
        redirect_to users_path(user_id: @user.id)
      else
        render 'index'
      end
    end
  end

  def edit
  end

  def update
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

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :photo, :mood_id)
  end
end
