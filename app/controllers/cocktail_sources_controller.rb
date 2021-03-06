class CocktailSourcesController < ApplicationController
  include CocktailsHelper
  before_action :set_cocktail_source, only: [:show, :edit, :update, :destroy]

  # GET /cocktail_sources
  # GET /cocktail_sources.json
  def index
    @cocktail_sources = CocktailSource.all
  end

  # GET /cocktail_sources/1
  # GET /cocktail_sources/1.json
  def show
    get_active_filters params
    build_filter_hash params
    @filters = @filter_hash.values 
    @filtered_cocktails = filtered_cocktails(@cocktail_source, @filter_hash)
    @filtered_shared_ingredients = Ingredient.new.filtered_shared_ingredients(@filtered_cocktails)
    @filtered_ingredient_types = IngredientType.new.filtered_ingredient_types(@filtered_cocktails)
    @filtered_ingredient_families = IngredientFamily.new.filtered_ingredient_families(@filtered_cocktails)
    @filtered_modifications = IngredientModification.filtered_modifications(@filtered_cocktails)
    @shared_ingredient_heirarchy = Ingredient.shared_ingredient_heirarchy [Ingredient.new(id:0)], @filtered_cocktails
  end

  # GET /cocktail_sources/new
  def new
    @cocktail_source = CocktailSource.new
  end

  # GET /cocktail_sources/1/edit
  def edit
  end

  # POST /cocktail_sources
  # POST /cocktail_sources.json
  def create
    @cocktail_source = CocktailSource.new(cocktail_source_params)

    respond_to do |format|
      if @cocktail_source.save
        format.html { redirect_to @cocktail_source, notice: 'Cocktail source was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cocktail_source }
      else
        format.html { render action: 'new' }
        format.json { render json: @cocktail_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocktail_sources/1
  # PATCH/PUT /cocktail_sources/1.json
  def update
    respond_to do |format|
      if @cocktail_source.update(cocktail_source_params)
        format.html { redirect_to @cocktail_source, notice: 'Cocktail source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cocktail_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocktail_sources/1
  # DELETE /cocktail_sources/1.json
  def destroy
    @cocktail_source.destroy
    respond_to do |format|
      format.html { redirect_to cocktail_sources_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail_source
      @cocktail_source = CocktailSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cocktail_source_params
      params.require(:cocktail_source).permit(:name)
    end
end
