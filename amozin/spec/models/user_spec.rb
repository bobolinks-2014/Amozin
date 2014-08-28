require 'rails_helper'

describe User do

  it { should have_many(:reviews) }

  it { should have_secure_password }

  it {should validate_uniqueness_of(:email)}

  it {should ensure_length_of(:password).is_at_least(6)}

# controller
  # it 'can edit his profile, so that I can keep his information current' do
  #     expect
  # end

  # it 'can delete his profile, so that he can dissassociate himself from the site' do
  # end

end
