#
# - create a review for a product, so that others can know my opinion
# - delete my review for the product, so that I can remove something I wanted earlier but don't want now
# - view reviews for a product, so that I can decide to purchase it or not
require 'rails_helper'

describe Review do
  it { should belong_to(:product)}
  it { should belong_to(:user)}
end
