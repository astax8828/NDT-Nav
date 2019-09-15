require 'rails_helper'

RSpec.describe "admin_panel/categories/show", type: :view do
  before(:each) do
    @admin_panel_category = assign(:admin_panel_category, AdminPanel::Category.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
