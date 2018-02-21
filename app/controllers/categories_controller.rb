class CategoriesController < ApplicationController

  # GET /categorys
  # GET /categorys.json
  def index
    @categories = Category.all
  end

  # GET /categorys/1
  # GET /categorys/1.json
  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

end
