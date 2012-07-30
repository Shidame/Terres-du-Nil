class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :username, :email, :password, :password_confirmation

  validates_presence_of :username, :email, :password, :password_confirmation
  validates_uniqueness_of :username, :email
  validates :username, length: 2..20
end
