class Admin::LoginController < ApplicationController
  skip_before_action :check_logged
  def index

  end
  def authenticate
    @user_logged = Admin::User.authenticate(params[:email], params[:password])
    if @user_logged
      session[:user_id] = @user_logged.id
      redirect_to admin_dashboard_path
    else
      flash[:error] = "Usuários ou Senha inválida."
      redirect_to admin_path
    end
  end

  def logout
    session.destroy
    redirect_to root_path
  end
end
