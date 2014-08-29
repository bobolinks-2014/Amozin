class Product < ActiveRecord::Base
  has_many :reviews
  has_many :item_to_buys
  belongs_to :category

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history] 
end
