class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
     @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_url
    end
  end

  def show
    @projects = @user.projects
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_url
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private

  def set_user
    @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
    redirect_to users_path, notice: error.message
  end

  def user_params
    params.require(:user).permit(:name, :email, :cnic, :dateofbirth)
  end
end
