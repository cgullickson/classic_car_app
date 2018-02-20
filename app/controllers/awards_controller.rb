class AwardsController < ApplicationController
  before_action :set_award, only: [:show]
  before_action :set_car, only: [:new, :create]


  def new
    @award = @car.awards.new
  end

  def index
    @awards = Award.all
  end

  def create
    @award = @car.awards.new(award_params)
    @award.save

    redirect_to user_path(current_user)
  end

  def show
  end

  def destroy
  end

  private

  def award_params
    params.require(:award).permit(:title, :year, :description)
  end

  def set_car
    @car = Car.find_by(params[:id])
  end
end
