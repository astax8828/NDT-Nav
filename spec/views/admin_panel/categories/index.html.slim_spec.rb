require 'rails_helper'

RSpec.describe "admin_panel/categories/index", type: :view do
  before(:each) do
    assign(:admin_panel_categories, [
      AdminPanel::Category.create!(
        :name => "Name",
        :description => "MyText"
      ),
      AdminPanel::Category.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of admin_panel/categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
