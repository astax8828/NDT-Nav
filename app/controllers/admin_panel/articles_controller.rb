class AdminPanel::ArticlesController < ApplicationController
  layout "admin_panel/admin_panel"
  before_action :set_admin_panel_article, only: [:show, :edit, :update, :destroy]

  # GET /admin_panel/articles
  def index
    @admin_panel_articles = AdminPanel::Article.all
  end

  # GET /admin_panel/articles/1
  def show
  end

  # GET /admin_panel/articles/new
  def new
    @admin_panel_article = AdminPanel::Article.new
    @categories = AdminPanel::Category.all

  end

  # GET /admin_panel/articles/1/edit
  def edit
  end

  # POST /admin_panel/articles
  def create
    @admin_panel_article = AdminPanel::Article.new(admin_panel_article_params.merge(admin_account_id: current_admin.id))

    if @admin_panel_article.save
      redirect_to @admin_panel_article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin_panel/articles/1
  def update
    if @admin_panel_article.update(admin_panel_article_params)
      redirect_to @admin_panel_article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin_panel/articles/1
  def destroy
    @admin_panel_article.destroy
    redirect_to admin_panel_articles_url, notice: 'Article was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin_panel_article
    @admin_panel_article = AdminPanel::Article.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def admin_panel_article_params
    params.require(:admin_panel_article).permit(:title, :content, :description, :category_id,
                                                :type_article, :allow_comments, :status_article)
  end
end
