require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @project_name = "testProject"
  end
  
	
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
	
	it "should get title 'home'" do
      get 'home'
      response.should have_selector("title", :content => @project_name + " - home") 
	end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

	it "should get title 'contact'" do
      get 'contact'
      response.should have_selector("title", :content => @project_name + " - contact") 
	end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

	it "should get title 'about'" do
      get 'about'
      response.should have_selector("title", :content => @project_name + " - about") 
	end
  end  
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

	it "should get title 'help'" do
      get 'help'
      response.should have_selector("title", :content => @project_name + " - help") 
	end
  end    

end
