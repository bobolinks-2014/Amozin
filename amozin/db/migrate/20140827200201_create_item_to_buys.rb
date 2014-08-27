class CreateItemToBuys < ActiveRecord::Migration
  def change
    create_table :item_to_buys do |t|
      t.integer :product_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
