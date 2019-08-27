require "rails_helper"

RSpec.describe AdminPanel::ArticlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/admin_panel/articles").to route_to("admin_panel/articles#index")
    end

    it "routes to #new" do
      expect(:get => "/admin_panel/articles/new").to route_to("admin_panel/articles#new")
    end

    it "routes to #show" do
      expect(:get => "/admin_panel/articles/1").to route_to("admin_panel/articles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin_panel/articles/1/edit").to route_to("admin_panel/articles#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin_panel/articles").to route_to("admin_panel/articles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin_panel/articles/1").to route_to("admin_panel/articles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin_panel/articles/1").to route_to("admin_panel/articles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin_panel/articles/1").to route_to("admin_panel/articles#destroy", :id => "1")
    end
  end
end
