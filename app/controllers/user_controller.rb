class UserController < ApplicationController

  def welcome
  end

  def profile
    @user = User.find(params[:id])
  end

end
