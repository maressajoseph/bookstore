class PagesController < ApplicationController

  def index
    @product1 = Product.first
    @product2 = Product.second
    @product3 = Product.third
  end

  def show
  end

end
