class Admin::LoginController < ApplicationController
  skip_before_action :check_logged
  layout 'login'
  def index

  end
  def authenticate
    @user_logged = Admin::User.authenticate(params[:email], params[:password])
    if @user_logged
      flash[:success] = "Olá #{@user_logged.name}, seja bem-vindo."
      session[:user_id] = @user_logged.id
      redirect_to admin_dashboard_path
    else
      @user = Admin::User.where(params[:userid])
      flash[:error] = "Usuários ou Senha inválida."
      redirect_to admin_path
    end
  end

  def logout
    flash[:logout] = "Até a próxima #{params[:username]}, volte sempre."
    session.destroy
    redirect_to root_path
  end
end
