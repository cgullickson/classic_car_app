class AwardsController < ApplicationController
  before_action :set_award, only: [:show, :create]

  def new
    @award = Award.new
  end

  def index
    @awards = Award.all
  end

  def create
    if @award.valid?
      @award.save
      redirect_to award_path(@award)
    else
      render :new
    end
  end

  def show
  end

  def destroy
  end

  private

  def set_award
    @award = Award.find(params[:id])
  end

  def award_params
    params.require[:award].permit(:make,:model,:year,:color)
  end
end
