class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:user_id])
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

end
