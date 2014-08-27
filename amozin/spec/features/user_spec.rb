require 'rails_helper'

feature 'User browsing the website' do
  context 'on homepage' do
    it 'sees a list of categories' do
      Category.create(name: 'Snippets')
      visit categories_path
      expect(page).to have_content "Snippets"
    end

    it 'sees a login link' do
      pending
    end

    it 'sees a register link' do
      pending
    end

    it 'sees a logout link if logged in' do
      pending
    end

  end
end
