class CategoriesController < ApplicationController
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
    
    if @category.save
      flash[:success] = 'Category added'
      redirect_to categories_path(id: params[:id])
    else
      flash.now[:error] = 'Category could not be saved'
      render :new
    end
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
