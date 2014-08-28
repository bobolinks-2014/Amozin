require 'rails_helper'

describe Cart do

  it { should belong_to(:user) }

  it { should have_many(:item_to_buys) }
end

# Carts
# - add a product to my cart, so that I can purchase it
# - view my shopping cart, so that I can see what I was going to buy
# - delete a product from my cart, so that my cart can reflect what I want
