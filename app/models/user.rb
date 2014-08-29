class User < ActiveRecord::Base
  # attr_accessible :email, :password, :password_confirmation

  has_many :reviews
  has_secure_password
  validates :password, :length => { :minimum => 6 }
  validates :email, uniqueness: true, :format => /.+@.+\..+/

  extend FriendlyId
  friendly_id :username, use: [:slugged, :history]

end
