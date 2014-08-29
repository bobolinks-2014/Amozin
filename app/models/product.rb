class Product < ActiveRecord::Base
  belongs_to :category
  has_many :reviews
  has_many :item_to_buys

  def show_all_other_products
    []
  end
end
