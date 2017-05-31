class ProductsController < ApplicationController
  before_action :set_product, only: [:show]


  def index
    @products = Product.all.order_by(params[:sort_by])
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    end
  end

  def show
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end



end
