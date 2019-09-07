require 'rails_helper'

RSpec.describe "AdminPanel::Tags", type: :request do
  describe "GET /admin_panel/tags" do
    it "works! (now write some real specs)" do
      get admin_panel_tags_path
      expect(response).to have_http_status(200)
    end
  end
end
