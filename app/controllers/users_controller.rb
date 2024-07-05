class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy, :update]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def show
    @projects = @user.projects
  end

  # def update
  # end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to users_path
  end


  def destroy
    @user.destroy
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :name, :email, :cnic)
  end

end
