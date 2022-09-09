class HomeController < ApplicationController
  skip_before_action :redirect_to_hompeage
  before_action :redirect_logged_user

  def redirect_logged_user
    redirect_to categories_path if user_signed_in?
  end

  def index; end
end
