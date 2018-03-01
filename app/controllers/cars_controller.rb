class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def new
    @car = Car.new
  end

  def index
    @cars = Car.all
  end

  def classic
    @cars = Car.classic(1987)
  end

  def create
    @car = Car.new(car_params)
    current_user.cars << @car
    if @car.valid?
      @car.save
      redirect_to user_cars_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @car.update(car_params)
    if @car.valid?
      @car.save
      redirect_to user_cars_path(current_user)
    else
      render :edit
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def destroy
    @car.destroy
    redirect_to user_cars_path(current_user)
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:make,:model,:year,:color)
  end

end
