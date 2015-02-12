class IngredientModificationsController < ApplicationController
  include CocktailsHelper
  before_action :set_ingredient_modification, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_modifications
  # GET /ingredient_modifications.json
  def index
    @ingredient_modifications = IngredientModification.all
  end

  # GET /ingredient_modifications/1
  # GET /ingredient_modifications/1.json
  def show
    build_filter_hash params
    @filters = @filter_hash.values 
    @filtered_cocktails = filtered_cocktails(@ingredient_modification, @filter_hash)
    @filtered_shared_ingredients = Ingredient.filtered_shared_ingredients(@filtered_cocktails)
    @filtered_ingredient_types = IngredientType.filtered_ingredient_types(@filtered_cocktails)
    @filtered_ingredient_families = IngredientFamily.filtered_ingredient_families(@filtered_cocktails)
    @filtered_modifications = IngredientModification.filtered_modifications(@filtered_cocktails).reject { |i| i == @ingredient_modification}
 
  end

  # GET /ingredient_modifications/new
  def new
    @ingredient_modification = IngredientModification.new
  end

  # GET /ingredient_modifications/1/edit
  def edit
  end

  # POST /ingredient_modifications
  # POST /ingredient_modifications.json
  def create
    @ingredient_modification = IngredientModification.new(ingredient_modification_params)

    respond_to do |format|
      if @ingredient_modification.save
        format.html { redirect_to @ingredient_modification, notice: 'Ingredient modification was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ingredient_modification }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient_modification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_modifications/1
  # PATCH/PUT /ingredient_modifications/1.json
  def update
    respond_to do |format|
      if @ingredient_modification.update(ingredient_modification_params)
        format.html { redirect_to @ingredient_modification, notice: 'Ingredient modification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredient_modification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_modifications/1
  # DELETE /ingredient_modifications/1.json
  def destroy
    @ingredient_modification.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_modifications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_modification
      @ingredient_modification = IngredientModification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_modification_params
      params.require(:ingredient_modification).permit(:name)
    end
end
