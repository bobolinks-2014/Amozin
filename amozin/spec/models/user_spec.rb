Users
- edit my profile, so that I can keep my information current
- delete my profile, so that I can disassociate myself from the site


describe 'User' do

    let(:user) { User.create(
                {username: "create tests",
                 email: "use rspec to drive development",
                 password: })
  }

  it 'has many reviews' do
    expect(user.reviews).to not_be_nil
  end

  it 'can only be created with a password' do
    expect(user )
  end

  it 'can be created with an email in a certain format' do
  end

  it 'can edit his profile, so that I can keep his information current' do
      expect
  end

  it 'can delete his profile, so that he can dissassociate himself from the site' do
  end

end
