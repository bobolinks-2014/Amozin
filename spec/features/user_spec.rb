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


end
