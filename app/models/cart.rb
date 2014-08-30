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
end
