require 'rails_helper'

RSpec.describe "admin_panel/articles/edit", type: :view do
  before(:each) do
    @admin_panel_article = assign(:admin_panel_article, AdminPanel::Article.create!(
      :title => "MyText",
      :content => "MyText",
      :description => "MyText",
      :category => nil,
      :type_article => "MyString",
      :allow_comments => false,
      :status_article => "MyString"
    ))
  end

  it "renders the edit admin_panel_article form" do
    render

    assert_select "form[action=?][method=?]", admin_panel_article_path(@admin_panel_article), "post" do

      assert_select "textarea[name=?]", "admin_panel_article[title]"

      assert_select "textarea[name=?]", "admin_panel_article[content]"

      assert_select "textarea[name=?]", "admin_panel_article[description]"

      assert_select "input[name=?]", "admin_panel_article[category_id]"

      assert_select "input[name=?]", "admin_panel_article[type_article]"

      assert_select "input[name=?]", "admin_panel_article[allow_comments]"

      assert_select "input[name=?]", "admin_panel_article[status_article]"
    end
  end
end
