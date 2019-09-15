require 'rails_helper'

RSpec.describe "AdminPanel::Categories", type: :request do
  describe "GET /admin_panel/categories" do
    it "works! (now write some real specs)" do
      get admin_panel_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
