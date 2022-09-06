class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.includes(:expenses).where(user_id: current_user.id)
  end

  def show
    @category = Category.includes(:expenses).find(params[:id])
  end
end
