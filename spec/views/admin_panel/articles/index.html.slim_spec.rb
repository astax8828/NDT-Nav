require 'rails_helper'

RSpec.describe "admin_panel/articles/index", type: :view do
  before(:each) do
    assign(:admin_panel_articles, [
      AdminPanel::Article.create!(
        :title => "MyText",
        :content => "MyText",
        :description => "MyText",
        :category => nil,
        :type_article => "Type Article",
        :allow_comments => false,
        :status_article => "Status Article"
      ),
      AdminPanel::Article.create!(
        :title => "MyText",
        :content => "MyText",
        :description => "MyText",
        :category => nil,
        :type_article => "Type Article",
        :allow_comments => false,
        :status_article => "Status Article"
      )
    ])
  end

  it "renders a list of admin_panel/articles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Type Article".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Status Article".to_s, :count => 2
  end
end
