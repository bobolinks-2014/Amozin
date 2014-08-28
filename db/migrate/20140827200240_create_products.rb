class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :name #added
      t.integer :price
      t.string  :description
      t.integer :category_id
      t.string  :image_url

      t.timestamps
    end
  end
end
