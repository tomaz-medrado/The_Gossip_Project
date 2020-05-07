class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to '/'
  end

  def welcome
  end

  def profile
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :city)
  end

end
