class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.includes(:expenses).where(user_id: current_user.id)
  end

  def show
    @category = Category.includes(:expenses).find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    
    @category.save
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
