require 'rails_helper'

RSpec.describe "admin_panel/tags/new", type: :view do
  before(:each) do
    assign(:admin_panel_tag, AdminPanel::Tag.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new admin_panel_tag form" do
    render

    assert_select "form[action=?][method=?]", admin_panel_tags_path, "post" do

      assert_select "input[name=?]", "admin_panel_tag[name]"

      assert_select "textarea[name=?]", "admin_panel_tag[description]"
    end
  end
end
