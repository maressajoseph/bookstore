class ProductsController < ApplicationController
  before_action :set_product, only: [:show]


  def index
    if params[:search]
      puts "params #{params.inspect}"
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order_by(params[:sort_by])
    end
  end

  def show
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end



end
