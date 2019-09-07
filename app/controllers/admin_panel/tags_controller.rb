class AdminPanel::TagsController < ApplicationController
  before_action :set_admin_panel_tag, only: [:show, :edit, :update, :destroy]

  # GET /admin_panel/tags
  def index
    @admin_panel_tags = AdminPanel::Tag.all
  end

  # GET /admin_panel/tags/1
  def show
  end

  # GET /admin_panel/tags/new
  def new
    @admin_panel_tag = AdminPanel::Tag.new
  end

  # GET /admin_panel/tags/1/edit
  def edit
  end

  # POST /admin_panel/tags
  def create
    @admin_panel_tag = AdminPanel::Tag.new(admin_panel_tag_params)

    if @admin_panel_tag.save
      redirect_to @admin_panel_tag, notice: 'Tag was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin_panel/tags/1
  def update
    if @admin_panel_tag.update(admin_panel_tag_params)
      redirect_to @admin_panel_tag, notice: 'Tag was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin_panel/tags/1
  def destroy
    @admin_panel_tag.destroy
    redirect_to admin_panel_tags_url, notice: 'Tag was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_panel_tag
      @admin_panel_tag = AdminPanel::Tag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_panel_tag_params
      params.require(:admin_panel_tag).permit(:name, :description)
    end
end
