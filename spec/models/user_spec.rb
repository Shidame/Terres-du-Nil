require 'spec_helper'

describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, username: nil).should_not be_valid
  end
  it "is invalid without an email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end
  it "is invalid without a password confirmation" do
    FactoryGirl.build(:user, password_confirmation: nil).should_not be_valid
  end
  it "is invalid when password and password confirmation doesn't match" do
    FactoryGirl.build(:user, password: "secret", password_confirmation: "notAsecret").should_not be_valid
  end
  it "is invalid if username is already used by another user" do
    FactoryGirl.create(:user, username: "John").should be_valid
    FactoryGirl.build(:user, username: "John").should_not be_valid
  end
  it "is invalid if email is already used by another user" do
    FactoryGirl.create(:user, username: "John", email: "john@example.com").should be_valid
    FactoryGirl.build(:user, username: "Charle", email: "john@example.com").should_not be_valid
  end
  it "is invalid if username length is < 2 and > 20" do
    FactoryGirl.build(:user, username: "a").should_not be_valid
    FactoryGirl.build(:user, username: "averyveryveryverylongusername").should_not be_valid
  end
end
