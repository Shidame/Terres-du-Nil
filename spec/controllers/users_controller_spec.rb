require 'spec_helper'

describe UsersController do

  describe "GET #new" do
    it "renders the :new view" do
      get :new
      response.should render_template :new
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

end
