class User < ActiveRecord::Base
  has_many :reviews
  has_secure_password
  validates :password, :length => { :minimum => 6 }
  validates :email, uniqueness: true, :format => /.+@.+\..+/

  extend FriendlyId
  friendly_id :username, use: :slugged
end
