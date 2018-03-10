class AwardsController < ApplicationController
  before_action :set_car, only: [:new, :create, :show, :index]


  def new
    #raise params.inspect
    @award = @car.awards.build
  end

  def index
    @awards = @car.awards
    render :json => @awards
  end

  def create
    @award = @car.awards.new(award_params)
    if @award.valid?
      @award.save
      redirect_to user_cars_path(current_user)
    else
      render :new
    end
  end

  def show
    @awards = @car.awards
  end

  def destroy
    @award = Award.find(params[:car_id])
    @award.destroy
    redirect_to user_cars_path(current_user)
  end

  private

  def award_params
    params.require(:award).permit(:title, :description, :car_id, categories_attributes: [:id, :name, :_destroy], category_ids:[])
  end

  def set_car
    @car = Car.find_by(id: params[:car_id])
  end
end
