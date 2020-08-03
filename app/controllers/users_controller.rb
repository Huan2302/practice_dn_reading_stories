class UsersController < ApplicationController
  before_action :load_user

  def show;  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Truyen Hot!"
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password,:password_confirmation)
  end

  def load_user
    @user = User.find_by id: params[:id]
    return if @user

    flash[:warning] = "KHong tim thay user"
    redirect_to root_path
  end
end
