class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:expenses).where(user_id: current_user.id)
  end
end
