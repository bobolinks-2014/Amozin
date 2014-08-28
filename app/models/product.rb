class Product < ActiveRecord::Base
  has_many :reviews
  has_many :item_to_buys
  belongs_to :category
end
