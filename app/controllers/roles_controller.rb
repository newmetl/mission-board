class RolesController < ApplicationController
  before_action :fetch_role, only: [:show, :edit, :update, :destroy]
  before_action :set_board, only: [:index, :create, :destroy, :edit, :update, :new]

  def index
    @roles = @board.roles
  end

  def show
  end

  def new
    @role = Role.new
  end

  def create
    @role = @board.roles.build(role_params.merge(user: current_user))
    if @role.save
      redirect_to board_roles_path(@board)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @role.update_attributes(role_params)
      redirect_to params[:redirect_to] || board_roles_path(@board)
    else
      render 'edit'
    end
  end

  def destroy
    @role.destroy
    redirect_to board_roles_path(@board)
  end


  private

  def role_params
    params.require(:role).permit(:name, :user_id)
  end

  def fetch_role
    @role = Role.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id])
  end
end
