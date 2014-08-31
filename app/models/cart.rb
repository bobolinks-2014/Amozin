class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :item_to_buys, dependent: :destroy

  def add_product(product_id)
    current_item = item_to_buys.find_by(product_id: product_id)
      if current_item
        current_item.quantity += 1
        current_item.save
      else
        current_item = item_to_buys.create(product_id: product_id)
      end
      current_item
  end


  def similar_products

    my_products = self.item_to_buys.pluck("product_id")

    all_carts_products = []
    Cart.all.each do |cart|
      all_carts_products << cart.item_to_buys.pluck("product_id")
    end

    possible_carts_products = []
    all_carts_products.each do |cart|
      if (my_products & cart) == my_products
        possible_carts_products << cart
      end
    end

    similar_products = possible_carts_products.flatten - my_products

    similar_products.map!{ |product_id| Product.find(product_id) }

    similar_products

  end

  def total_price
    item_to_buys.to_a.sum { |item| item.total_price }
  end
end


