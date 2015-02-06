class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]
  before_action :set_ingredient_types, only: [:new, :edit]

  # GET /ingredients
  # GET /ingredients.json
  def index
    #the joins make it go much slower - could still create custom objects in in memomy db pull
    @ingredients = Ingredient.all.includes(:cocktails).joins(:cocktails)#.joins(:ingredients_to_cocktails).joins(:cocktails)
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
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

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
    @div = params[:div]
    if @div.present?
      render partial: 'form' and return
    end
  end

  # GET /ingredients/1/edit
  def edit
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = Ingredient.new(ingredient_params)
    @div = params[:div]
    respond_to do |format|
      if @ingredient.save
        if @div.present?
          @ingredients_dropdown = Ingredient.all.map { |i| [i.name, i.id] }
          @new_ingredient = true
          format.html { render partial: 'cocktails/ingredients_dropdown'}
        else
          format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
          format.json { render action: 'show', status: :created, location: @ingredient }
        end
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    def set_ingredient_types
      @ingredient_types = IngredientType.all
      @ingredient_type_dropdown = @ingredient_types.map { |it| ["#{it.name} (#{it.ingredient_family.name})", it.id] }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:ingredient_type_id, :name, :brand, :make, :description)
    end
end
