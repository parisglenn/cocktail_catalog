class IngredientTypesController < ApplicationController
  before_action :set_ingredient_type, only: [:show, :edit, :update, :destroy]
  before_action :set_ingredient_families, only: [:new, :edit]

  # GET /ingredient_types
  # GET /ingredient_types.json
  def index
    @ingredient_types = IngredientType.all
  end

  # GET /ingredient_types/1
  # GET /ingredient_types/1.json
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
    if params[:modification_filter_1].present?
      @modification_filter_1 = IngredientModification.find params[:modification_filter_1]
      @no_modification_filter = true
    end
    @filters = [@ingredient_filter_1, @ingredient_filter_2, @ingredient_type_filter_1,
      @ingredient_type_filter_2, @ingredient_family_filter_1, @ingredient_family_filter_2, @modification_filter_1]
  end

  # GET /ingredient_types/new
  def new
    @ingredient_type = IngredientType.new
  end

  # GET /ingredient_types/1/edit
  def edit
  end

  # POST /ingredient_types
  # POST /ingredient_types.json
  def create
    @ingredient_type = IngredientType.new(ingredient_type_params)

    respond_to do |format|
      if @ingredient_type.save
        format.html { redirect_to @ingredient_type, notice: 'Ingredient type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ingredient_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_types/1
  # PATCH/PUT /ingredient_types/1.json
  def update
    respond_to do |format|
      if @ingredient_type.update(ingredient_type_params)
        format.html { redirect_to @ingredient_type, notice: 'Ingredient type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredient_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_types/1
  # DELETE /ingredient_types/1.json
  def destroy
    @ingredient_type.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_type
      @ingredient_type = IngredientType.find(params[:id])
    end

    def set_ingredient_families
      @ingredient_families = IngredientFamily.all
      @ingredient_family_dropdown = @ingredient_families.map { |it| [it.name, it.id] }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_type_params
      params.require(:ingredient_type).permit(:name, :ingredient_family_id)
    end
end
