require 'rails_helper'

describe Category do

  it { should have_many(:products) }

end



# Categories
# - view all of the categories, so that I can select one
#   - view the categories' names
