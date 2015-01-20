class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]
  before_action :set_ingredient_types, only: [:new, :edit]

  # GET /ingredients
  # GET /ingredients.json
  def index
    @ingredients = Ingredient.all
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
  end

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
    @div = params[:div]
    if @div
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
        if @div
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
      @ingredient_type_dropdown = @ingredient_types.map { |it| [it.name, it.id] }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:ingredient_type_id, :name, :brand, :make, :description)
    end
end
