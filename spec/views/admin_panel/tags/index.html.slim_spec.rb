require 'rails_helper'

RSpec.describe "admin_panel/tags/index", type: :view do
  before(:each) do
    assign(:admin_panel_tags, [
      AdminPanel::Tag.create!(
        :name => "Name",
        :description => "MyText"
      ),
      AdminPanel::Tag.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of admin_panel/tags" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
