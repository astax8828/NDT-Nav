require 'rails_helper'

RSpec.describe "admin_panel/tags/edit", type: :view do
  before(:each) do
    @admin_panel_tag = assign(:admin_panel_tag, AdminPanel::Tag.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_panel_tag form" do
    render

    assert_select "form[action=?][method=?]", admin_panel_tag_path(@admin_panel_tag), "post" do

      assert_select "input[name=?]", "admin_panel_tag[name]"

      assert_select "textarea[name=?]", "admin_panel_tag[description]"
    end
  end
end
