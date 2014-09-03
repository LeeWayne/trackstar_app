class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    User.create(params[:user])
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to(@user)
  end

end