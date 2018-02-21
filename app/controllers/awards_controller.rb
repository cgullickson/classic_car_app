class AwardsController < ApplicationController
  before_action :set_car, only: [:new, :create, :destroy]


  def new
    @award = @car.awards.new
    2.times {@award.categories.build}
  end

  def index
    @awards = Award.all
  end

  def create
    @award = @car.awards.new(award_params)
    if @award.valid?
      @award.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @award = @car.awards.find(params[:id])
    @award.destroy
    redirect_to user_path(current_user)
  end

  private

  def award_params
    params.require(:award).permit(:title, :description, categories_attributes: [:id, :name, :_destroy])
  end

  def set_car
    @car = Car.find_by(params[:id])
  end
end
