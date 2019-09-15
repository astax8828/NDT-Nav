require "rails_helper"

RSpec.describe AdminPanel::CategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/admin_panel/categories").to route_to("admin_panel/categories#index")
    end

    it "routes to #new" do
      expect(:get => "/admin_panel/categories/new").to route_to("admin_panel/categories#new")
    end

    it "routes to #show" do
      expect(:get => "/admin_panel/categories/1").to route_to("admin_panel/categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin_panel/categories/1/edit").to route_to("admin_panel/categories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin_panel/categories").to route_to("admin_panel/categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin_panel/categories/1").to route_to("admin_panel/categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin_panel/categories/1").to route_to("admin_panel/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin_panel/categories/1").to route_to("admin_panel/categories#destroy", :id => "1")
    end
  end
end
