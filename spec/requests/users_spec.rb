require 'spec_helper'

describe "Users" do
  it "Adds a new user from home page and signs in automatically" do
    visit root_path
    expect{
      page.should have_content "Sign Up"
      fill_in "Username", with: "John"
      fill_in "Email", with: "john@example.com"
      fill_in "Password", with: "secret"
      fill_in "Password confirmation", with: "secret"
      click_button "Create User"
    }.to change(User, :count).by(1)
    page.should have_content "Welcome John"
    #page.should have_content "Sign Out"
  end
end
