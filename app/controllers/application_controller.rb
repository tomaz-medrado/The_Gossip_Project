class ApplicationController < ActionController::Base
  add_flash_types :danger, :info, :warning, :success

  def current_user
    User.find_by(id:session[:user_id])
  end


end
