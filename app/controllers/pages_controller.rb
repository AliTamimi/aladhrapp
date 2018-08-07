class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    
  end

  def admin
    @users = User.all
    @products = Product.all
  end
end
