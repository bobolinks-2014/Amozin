require 'rails_helper'

feature 'User browsing the website' do
  context 'on homepage' do
    it 'sees a list of categories' do
      Category.create(name: 'Snippets')
      visit categories_path
      expect(page).to have_content "Snippets"
    end

    it 'sees a login link' do
      visit categories_path
      expect(page).to have_content "Login"
    end

    it 'sees a SignUp link' do
      visit categories_path
      expect(page).to have_content "SignUp"
    end

    it 'sees a logout link if logged in' do
      visit categories_path
      expect(page).to have_content "LogOut"
    end

  end

  context 'on category page' do
    it 'sees a list of products' do
      category = Category.create(name: 'Snippets')
      Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Greate way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_path(category)
      expect(page).to have_content "Meatball Skateboard"
    end

    it "sees a product's category" do
      category = Category.create(name: 'Snippets')
      Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Greate way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_path(category)
      expect(page).to have_content "Snippets"
    end

    it 'sees a products price' do
      category = Category.create(name: 'Snippets')
      Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Greate way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_path(category)
      expect(page).to have_content "2"
    end

    it 'sees a products description' do
      category = Category.create(name: 'Snippets')
      Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_path(category)
      expect(page).to have_content "Great way to get around town while staying off the hangry train"
    end

    it 'sees a products image' do
      category = Category.create(name: 'Snippets')
      Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)
      visit category_path(category)
      expect(page).to have_content "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg"
    end

    xit 'sees a list of similar products' do

    end
  end

  context 'checking sessions' do
    xit 'allows a session to be created' do
    end

    xit 'allows a session to be destroyed' do
    end

    xit 'allows a user to create a login' do
    end
  end

  context 'User profile' do
    xit 'allows a user to edit their profile' do
    end

    xit 'allows a user to delete their profile' do
    end
  end

  context 'Shopping Cart' do
    xit 'adds a product to the cart' do
    end

    xit 'shows all the products in the shopping cart' do
    end

    xit 'allows user to remove a product from the cart' do
    end

    xit 'Shopping cart empties after user purchases items' do
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
