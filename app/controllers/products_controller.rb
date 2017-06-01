class ProductsController < ApplicationController
  before_action :set_product, only: [:show]


  def index
    @products = Product.search(params[:search]).order("created_at DESC")
  end

  def show
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end



end
