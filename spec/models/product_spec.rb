require 'rails_helper'

describe Product do

  it { should have_many(:reviews) }

  it { should have_many(:item_to_buys) }

  it { should belong_to(:category) }
end

describe "Product" do

let(:category) {Category.new(name: 'Snippets')}
let(:product1) {Product.new( name: 'Meatball Skateboard',
                      price: 2,
                      image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)}
let(:product2) {Product.new( name: 'Canaries in Cantaloupes',
                      price: 3.8,
                      image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)}

  it "has method show_all_other_products that should not include itself" do
    expect(product2.show_all_other_products).not_to include(product1)
  end

end
# Products
# - view a product, so that I can decide to buy it or not
#   - view the product's name
#   - view the product's category
#   - view the product's price
#   - view the product's description
#   - view the product's image
# - view similar products that have high reviews (products in the same category that are not selected), so that I can see
