class CartsController < ApplicationController
before_action :authenticate_user!

  def new
    set_product_id2
    @cart = Cart.new(product: @product, profile: current_user.profile)
    @cart.save
    redirect_to carts_path, notice: "Product added to your cart successuflly"
  end

  def destroy
    set_product_id
    @cart = Cart.find_by(product: @product.id)
    @cart.destroy
    redirect_to carts_path, notice: "Product deleted successuflly from your cart"
  end

  def index
    @cart = current_user.profile.cart_products
  end







  private

  def set_product_id
    @product = Product.find(params[:id])
  end

  def set_product_id2
    @product = Product.find(params[:product_id])
  end


end
