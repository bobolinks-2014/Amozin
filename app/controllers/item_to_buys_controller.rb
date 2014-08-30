class ItemToBuysController < ApplicationController

  def create
    cart = current_cart
    cart.add_product(params[:product_id])
    # item = ItemToBuy.create(product_id: params[:product_id], cart_id: current_cart.id)
    redirect_to cart_path(cart)
  end

  def update
   item = ItemToBuy.find(params[:id])
    item.update_attributes({quantity: params[:item_to_buy][:quantity]})
    redirect_to cart_path(current_cart)
  end

  def destroy
   item = ItemToBuy.find(params[:id])
   item.destroy
    redirect_to cart_path(current_cart)
  end

end
