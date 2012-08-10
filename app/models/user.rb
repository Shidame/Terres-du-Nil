class User < ActiveRecord::Base
  has_many :cities

  has_secure_password
  attr_accessible :username, :email, :password, :password_confirmation

  validates_presence_of :username, :email, :password, :password_confirmation
  validates_uniqueness_of :username, :email, :persistence_token
  validates :username, length: 2..20

  def self.generate_token
    existing_tokens = User.select :persistence_token

    begin
      token = SecureRandom.hex
    end while existing_tokens.include?(token)

    token
  end
end
