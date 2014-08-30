class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :item_to_buys, dependent: :destroy
end
