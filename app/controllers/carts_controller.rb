class CartsController < ApplicationController
before_action :authenticate_user!

  def new
    set_product_id2
    @cart = Cart.new(product: @product, profile: current_user.profile)
    respond_to do |format|
      if @cart.save
        format.html { redirect_to products_path, notice: "Product added to your cart successuflly" }
        format.json { render :index, status: :new, location: @cart }
      else
        format.html { redirect_to products_path, notice: "Product wasn't added to the cart, sorry." }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_product_id
    @cart = Cart.find_by(product: @product.id)
    @cart.destroy
    redirect_to carts_path, notice: "Product deleted successuflly from your cart"
  end

  # GET /carts
  # GET /carts.json
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
