class ApplicationController < ActionController::Base
  before_action :check_logged

  def check_logged
    if session[:user_id]
      @user_logged = Admin::User.find(session[:user_id])
    else
      redirect_to admin_path
    end
  end
end
