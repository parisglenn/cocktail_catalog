class IngredientModificationsController < ApplicationController
  before_action :set_ingredient_modification, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_modifications
  # GET /ingredient_modifications.json
  def index
    @ingredient_modifications = IngredientModification.all
  end

  # GET /ingredient_modifications/1
  # GET /ingredient_modifications/1.json
  def show
    @ingredient_filter_1 = Ingredient.find params[:ingredient_filter_1] if params[:ingredient_filter_1].present? 
    if params[:ingredient_filter_2].present?
      @ingredient_filter_2 = Ingredient.find params[:ingredient_filter_2]
      @no_ingredient_filter = true
    end
    @ingredient_type_filter_1 = IngredientType.find params[:ingredient_type_filter_1] if params[:ingredient_type_filter_1].present?
    if params[:ingredient_type_filter_2].present?
      @ingredient_type_filter_2 = IngredientType.find params[:ingredient_type_filter_2] 
      @no_ingredient_type_filter = true
    end
    @ingredient_family_filter_1 = IngredientFamily.find params[:ingredient_family_filter_1] if params[:ingredient_family_filter_1].present?
    if params[:ingredient_family_filter_2].present?
      @ingredient_family_filter_2 = IngredientFamily.find params[:ingredient_family_filter_2] 
      @no_ingredient_family_filter = true
    end
    @filters = [@ingredient_filter_1, @ingredient_filter_2, @ingredient_type_filter_1,
      @ingredient_type_filter_2, @ingredient_family_filter_1, @ingredient_family_filter_2]
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
