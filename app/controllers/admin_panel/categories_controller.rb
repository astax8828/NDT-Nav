class AdminPanel::CategoriesController < ApplicationController
  layout "admin_panel/admin_panel"
  before_action :set_admin_panel_category, only: [:show, :edit, :update, :destroy]

  # GET /admin_panel/categories
  def index
    @admin_panel_categories = AdminPanel::Category.all
  end

  # GET /admin_panel/categories/1
  def show
  end

  # GET /admin_panel/categories/new
  def new
    @admin_panel_category = AdminPanel::Category.new
  end

  # GET /admin_panel/categories/1/edit
  def edit
  end

  # POST /admin_panel/categories
  def create
    @admin_panel_category = AdminPanel::Category.new(admin_panel_category_params)

    if @admin_panel_category.save
      redirect_to @admin_panel_category, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin_panel/categories/1
  def update
    if @admin_panel_category.update(admin_panel_category_params)
      redirect_to @admin_panel_category, notice: 'Category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin_panel/categories/1
  def destroy
    @admin_panel_category.destroy
    redirect_to admin_panel_categories_url, notice: 'Category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_panel_category
      @admin_panel_category = AdminPanel::Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_panel_category_params
      params.require(:admin_panel_category).permit(:name, :description)
    end
end
