require 'rails_helper'

describe UserController do
  describe "Get #index" do 
    it "renders the :sign_in view if user is not authenticated" do 
      get :index
      response.should redirect_to "http://test.host/users/sign_in"
      response.status.should be(302)
    end

    it "should let a user see the index page" do
      @user = create( :user )
      sign_in(@user)
      get :index
      expect(response).to render_template(:index)
      response.status.should be(200)
    end
  end
end