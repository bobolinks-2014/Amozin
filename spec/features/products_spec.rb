 require 'rails_helper'

feature 'User browsing the website' do


  context 'on category\'s products page' do

    it 'sees a list of products' do
      category = Category.create(name: 'Snippets')
      prodcut = Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Greate way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_products_path(category)
      expect(page).to have_content "Meatball Skateboard"
    end

  end

  context 'on product\'s specific page' do
    it "sees a product's category" do
      category = Category.create(name: 'Snippets')
      product = Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Greate way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_product_path(product)
      expect(page).to have_content "Snippets"
    end

    it 'sees a products price' do
      category = Category.create(name: 'Snippets')
      product = Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Greate way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_product_path(product)
      expect(page).to have_content "2"
    end

    it 'sees a products description' do
      category = Category.create(name: 'Snippets')
      product = Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_product_path(product)
      expect(page).to have_content "Great way to get around town while staying off the hangry train"
    end

    it 'sees a products image' do
      category = Category.create(name: 'Snippets')
      product = Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_product_path(product)
      expect(page).to have_content "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg"
    end

    it 'sees a list of similar products' do
      category = Category.create(name: 'Snippets')
      product = Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)
      product = Product.create( name: 'Canaries in Cantaloupes',
                      price: 3.8,
                      image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_product_path(product)
      expect(page).to have_content 'Meatball Skateboard'
    end
  end

  context 'Reviews options' do
    xit 'able to create a review' do
    end

    xit 'able to delete a review' do
    end

    xit 'able to view the reviews for a product' do
    end
  end

end
