class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @cars = @user.cars
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  def cars_index
    @user = User.find(params[:id])
    @cars = @user.cars
    render template: 'cars/all'
  end

  def car_index
    @user = current_user
    @cars = @user.cars
    render json: @cars
  end

end
