class CategoriesController < ApplicationController

	def index
		@categories = Category.all
		@category = Category.new
	end

	def new
		@category = Category.new
		render layout: false
	end

	def create
    @category = Category.create(categories_params)
    render json: @category
	end

	def show
		@category = Category.find(params[:id])
		respond_to do |format|
			format.html { render :show }
			format.json { render json: @category }
		end
	end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  def categories_params
    params.require(:category).permit(:name)
  end
end
