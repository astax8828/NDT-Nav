require 'rails_helper'

RSpec.describe "AdminPanel::Articles", type: :request do
  describe "GET /admin_panel/articles" do
    it "works! (now write some real specs)" do
      get admin_panel_articles_path
      expect(response).to have_http_status(200)
    end
  end
end
