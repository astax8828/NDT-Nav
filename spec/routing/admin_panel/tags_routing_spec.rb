require "rails_helper"

RSpec.describe AdminPanel::TagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/admin_panel/tags").to route_to("admin_panel/tags#index")
    end

    it "routes to #new" do
      expect(:get => "/admin_panel/tags/new").to route_to("admin_panel/tags#new")
    end

    it "routes to #show" do
      expect(:get => "/admin_panel/tags/1").to route_to("admin_panel/tags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin_panel/tags/1/edit").to route_to("admin_panel/tags#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin_panel/tags").to route_to("admin_panel/tags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin_panel/tags/1").to route_to("admin_panel/tags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin_panel/tags/1").to route_to("admin_panel/tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin_panel/tags/1").to route_to("admin_panel/tags#destroy", :id => "1")
    end
  end
end
