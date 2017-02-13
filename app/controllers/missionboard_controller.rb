class MissionboardController < ApplicationController

  def enter
    session[:current_user_id] = params[:user_id]
    redirect_to missionboard_path
  end

  def show
    if (@user = current_user).present?
      @users = User.all
      @roles = Role.all
      @todos = Todo.all
      @categories = Category.all
      @moods = Mood.all
    else
      redirect_to root_path
    end
  end

  def exit
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
