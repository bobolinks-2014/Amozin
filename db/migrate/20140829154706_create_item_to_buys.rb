class CreateItemToBuys < ActiveRecord::Migration
  def change
    create_table :item_to_buys do |t|
      t.belongs_to :cart
      t.belongs_to :product
      t.timestamps
    end
  end
end
