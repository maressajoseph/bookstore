class CartsController < ApplicationController
before_action :authenticate_user!

  def new
    set_product_id
    @cart = Cart.new(product: @product, profile: current_user.profile)
    @cart.save
    redirect_to product_cart_path(@product, @cart), notice: "Product added to your cart successuflly"
  end

  def destroy
    set_product_id
    @cart = Cart.find_by(product: @product)
    @cart.destroy
    redirect_to product_cart_path(@product, @cart), notice: "Product deleted successuflly from your cart"
  end







  private

  def set_product_id
    @product = Product.find(params[:product_id])
  end

  def set_cart_id
    @cart = Cart.find(params[:id])
  end


end
