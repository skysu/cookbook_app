class CategoriesController < ApplicationController

  def index
    @categories = Category.all.order(:name)
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(category_params)
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
