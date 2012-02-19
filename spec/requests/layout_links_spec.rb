require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do
    it "should have a Home page at '/'" do
      get '/'
      response.should have_selector('title', :content => "Home")
      response.status.should be(200)
    end

    it "should have a Contact page at '/contact'" do
      get '/contact'
      response.should have_selector('title', :content => "Contact")
      response.status.should be(200)
    end

    it "should have an About page at '/about'" do
      get '/about'
      response.should have_selector('title', :content => "About")
      response.status.should be(200)
    end

    it "should have a Help page at '/help'" do
      get '/help'
      response.should have_selector('title', :content => "Help")
      response.status.should be(200)
    end

    it "should have a Help page at '/signup'" do
      get '/signup'
      response.should have_selector('title', :content => "Sign up")
      response.status.should be(200)
    end

  end
end
