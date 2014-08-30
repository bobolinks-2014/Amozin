class ItemToBuysController < ApplicationController

  def create
    cart = current_cart
    item = ItemToBuy.create(product_id: params[:product_id], cart_id: current_cart.id)
    redirect_to cart_path(cart)
  end

  def update

  end

end
