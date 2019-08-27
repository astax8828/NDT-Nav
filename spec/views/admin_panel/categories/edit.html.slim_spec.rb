require 'rails_helper'

RSpec.describe "admin_panel/categories/edit", type: :view do
  before(:each) do
    @admin_panel_category = assign(:admin_panel_category, AdminPanel::Category.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_panel_category form" do
    render

    assert_select "form[action=?][method=?]", admin_panel_category_path(@admin_panel_category), "post" do

      assert_select "input[name=?]", "admin_panel_category[name]"

      assert_select "textarea[name=?]", "admin_panel_category[description]"
    end
  end
end
