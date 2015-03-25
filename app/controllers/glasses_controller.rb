class GlassesController < ApplicationController
  include CocktailsHelper
  before_action :set_glass, only: [:show, :edit, :update, :destroy]

  # GET /glasses
  # GET /glasses.json
  def index
    @glasses = Glass.all
  end

  # GET /glasses/1
  # GET /glasses/1.json
  def show
    get_active_filters params
    build_filter_hash params
    @filters = @filter_hash.values 
    @filtered_cocktails = filtered_cocktails(@glass, @filter_hash)
    @filtered_shared_ingredients = Ingredient.new.filtered_shared_ingredients(@filtered_cocktails)
    @filtered_ingredient_types = IngredientType.new.filtered_ingredient_types(@filtered_cocktails)
    @filtered_ingredient_families = IngredientFamily.new.filtered_ingredient_families(@filtered_cocktails)
    @filtered_modifications = IngredientModification.filtered_modifications(@filtered_cocktails)
    @shared_ingredient_heirarchy = Ingredient.shared_ingredient_heirarchy [Ingredient.new(id:0)], @filtered_cocktails
  end

  # GET /glasses/new
  def new
    @glass = Glass.new
  end

  # GET /glasses/1/edit
  def edit
  end

  # POST /glasses
  # POST /glasses.json
  def create
    @glass = Glass.new(glass_params)

    respond_to do |format|
      if @glass.save
        format.html { redirect_to @glass, notice: 'Glass was successfully created.' }
        format.json { render action: 'show', status: :created, location: @glass }
      else
        format.html { render action: 'new' }
        format.json { render json: @glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glasses/1
  # PATCH/PUT /glasses/1.json
  def update
    respond_to do |format|
      if @glass.update(glass_params)
        format.html { redirect_to @glass, notice: 'Glass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glasses/1
  # DELETE /glasses/1.json
  def destroy
    @glass.destroy
    respond_to do |format|
      format.html { redirect_to glasses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glass
      @glass = Glass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glass_params
      params.require(:glass).permit(:name)
    end
end
