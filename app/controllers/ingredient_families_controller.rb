class IngredientFamiliesController < ApplicationController
  include CocktailsHelper
  before_action :set_ingredient_family, only: [:show, :edit, :update, :destroy]
  before_action :set_ingredient_categories, only: [:new, :edit]

  # GET /ingredient_families
  # GET /ingredient_families.json
  def index
    @ingredient_families = IngredientFamily.all
  end

  # GET /ingredient_families/1
  # GET /ingredient_families/1.json
  def show
    build_filter_hash params
    @filters = @filter_hash.values 
    @filtered_cocktails = filtered_cocktails(@ingredient_family, @filter_hash)
    @filtered_shared_ingredients = Ingredient.filtered_shared_ingredients(@filtered_cocktails)
    @filtered_ingredient_types = IngredientType.filtered_ingredient_types(@filtered_cocktails)
    @filtered_ingredient_families = IngredientFamily.filtered_ingredient_families(@filtered_cocktails)
    @filtered_modifications = IngredientModification.filtered_modifications(@filtered_cocktails)
  end

  # GET /ingredient_families/new
  def new
    @ingredient_family = IngredientFamily.new
  end

  # GET /ingredient_families/1/edit
  def edit
  end

  # POST /ingredient_families
  # POST /ingredient_families.json
  def create
    @ingredient_family = IngredientFamily.new(ingredient_family_params)

    respond_to do |format|
      if @ingredient_family.save
        format.html { redirect_to @ingredient_family, notice: 'Ingredient family was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ingredient_family }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_families/1
  # PATCH/PUT /ingredient_families/1.json
  def update
    respond_to do |format|
      if @ingredient_family.update(ingredient_family_params)
        format.html { redirect_to @ingredient_family, notice: 'Ingredient family was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredient_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_families/1
  # DELETE /ingredient_families/1.json
  def destroy
    @ingredient_family.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_families_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_family
      @ingredient_family = IngredientFamily.find(params[:id])
    end

    def set_ingredient_categories
      @ingredient_categories = IngredientCategory.all
      @ingredient_category_dropdown = @ingredient_categories.map { |it| [it.name, it.id] }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_family_params
      params.require(:ingredient_family).permit(:name, :ingredient_category_id)
    end
end
