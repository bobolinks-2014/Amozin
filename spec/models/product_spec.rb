require 'rails_helper'

describe Product do

  it { should have_many(:reviews) }

  it { should have_many(:item_to_buys) }

  it { should belong_to(:category) }
end


# Products
# - view a product, so that I can decide to buy it or not
#   - view the product's name
#   - view the product's category
#   - view the product's price
#   - view the product's description
#   - view the product's image
# - view similar products that have high reviews (products in the same category that are not selected), so that I can see