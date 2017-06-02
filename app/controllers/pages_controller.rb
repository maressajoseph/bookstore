class PagesController < ApplicationController

  def index
    @product1 = Product.first
    @product2 = Product.second
    @product3 = Product.third
  end

  def show
  end

  def checkout
    @cart = current_user.profile.cart_products
    @profile = current_user.profile
  end

end
