class Admin::UsersController < ApplicationController
  layout 'admin'
  before_action :set_user, only: %i[ show edit update destroy edit_photo ]

  # GET /admin/users or /admin/users.json
  def index
    @users = Admin::User.all.order(:name).paginate(page: params[:page] ? params[:page] : 1 , per_page: 5)
  end

  # GET /admin/users/1 or /admin/users/1.json
  def show
  end

  # GET /admin/users/new
  def new
    @user = Admin::User.new
  end

  # GET /admin/users/1/edit
  def edit
  end

  # POST /admin/users or /admin/users.json
  def create
    @user = Admin::User.new(user_params)
    if @user.save
      flash[:mensagem] = "#{@user.name} foi adicinado(a)  , confira."
    end
  end

  # PATCH/PUT /admin/users/1 or /admin/users/1.json
  def update
    if @user.update(user_params)
      flash[:mensagem] = "#{@user.name} foi atualizado(a), confira."
    end
  end

  # DELETE /admin/users/1 or /admin/users/1.json
  def destroy
    if @user.destroy
      flash[:mensagem] = "#{@user.name} foi apagado(a), confira."
    end
  end

  def search

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = Admin::User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:admin_user).permit(:name, :email, :password, :active, :admin, :photo)
    end
end
