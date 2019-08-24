require 'test_helper'

class AdminPanel::AdminPanelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_panel_admin_panel_index_url
    assert_response :success
  end

end
