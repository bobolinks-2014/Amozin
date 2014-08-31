class Product < ActiveRecord::Base
  has_many :reviews
  has_many :item_to_buys
  belongs_to :category

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def self.featured_products
    self.all.sample(4)
  end

  def show_all_other_products
    Product.where(category_id: self.category_id).to_a.delete_if{|product| product.id == self.id}
  end

  def average_review
    if self.reviews.pluck("rating").size > 0
      rating_array = self.reviews.pluck("rating")
      (rating_array.reduce{ |sum, n| sum.to_i + n.to_i }.to_i)/ rating_array.size
    else
      0
    end
  end

end

