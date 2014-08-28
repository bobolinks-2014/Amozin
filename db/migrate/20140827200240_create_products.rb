class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
