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

  def create
    cart = current_cart
    cart.item_to_buys.destroy_all
    flash[:notice] = "Congratulations, Your Purchase Was Completed, too bad this is a fake website!"
    redirect_to cart_path(current_cart)
  end

end
