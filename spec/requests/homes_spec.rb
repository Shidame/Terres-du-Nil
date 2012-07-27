require 'spec_helper'

describe "Homes" do
  describe "GET /" do
    it "displays the homepage" do
      visit root_path
      page.should have_content "Welcome on TdN !"
    end
  end
end
