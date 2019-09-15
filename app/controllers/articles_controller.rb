class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = set_article
  end

  private

  def set_article
    @article = AdminPanel::Article.find(params[:id])
  end
end
