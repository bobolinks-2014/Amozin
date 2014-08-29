class Product < ActiveRecord::Base
  has_many :reviews
  has_many :item_to_buys
  belongs_to :category


  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def show_all_other_products
    Product.where(category_id: self.category_id).to_a.delete_if{|product| product.id == self.id}
  end

end
