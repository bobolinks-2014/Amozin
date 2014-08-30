class CartsController < ApplicationController
  def show

  end

  def update

  end

  def destroy
    cart = Cart.find(params[:id])
    cart.item_to_buys.destroy_all
      redirect_to cart_path(current_cart)
  end

end
