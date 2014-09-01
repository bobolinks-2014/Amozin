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
      expect(page).to have_button "Log in"
    end

    it 'sees a SignUp link' do
      visit categories_path
      expect(page).to have_content "Sign up"
    end

    it 'can login' do
      @user = User.create!(username: "Rob",
                          email: "Rob@rob.com",
                          password: "robrob",
                          password_confirmation: "robrob")
      Cart.create(user: @user)
      visit root_url
      fill_in 'email', with: @user.email
      fill_in 'password', with: @user.password
      click_button "Log in"
      expect(page).to have_content "logout"

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
