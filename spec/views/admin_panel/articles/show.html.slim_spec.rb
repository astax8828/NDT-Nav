require 'rails_helper'

RSpec.describe "admin_panel/articles/show", type: :view do
  before(:each) do
    @admin_panel_article = assign(:admin_panel_article, AdminPanel::Article.create!(
      :title => "MyText",
      :content => "MyText",
      :description => "MyText",
      :category => nil,
      :type_article => "Type Article",
      :allow_comments => false,
      :status_article => "Status Article"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Type Article/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Status Article/)
  end
end
