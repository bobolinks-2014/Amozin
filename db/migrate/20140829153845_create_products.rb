class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :image_url
      t.string :description
      t.belongs_to :category
      t.timestamps
    end
  end
end
