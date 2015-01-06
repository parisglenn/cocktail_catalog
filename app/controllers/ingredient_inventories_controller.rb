class IngredientInventoriesController < ApplicationController
  before_action :set_ingredient_inventory, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_inventories
  # GET /ingredient_inventories.json
  def index
    @ingredient_inventories = IngredientInventory.all
  end

  # GET /ingredient_inventories/1
  # GET /ingredient_inventories/1.json
  def show
  end

  # GET /ingredient_inventories/new
  def new
    @ingredient_inventory = IngredientInventory.new
  end

  # GET /ingredient_inventories/1/edit
  def edit
  end

  # POST /ingredient_inventories
  # POST /ingredient_inventories.json
  def create
    @ingredient_inventory = IngredientInventory.new(ingredient_inventory_params)

    respond_to do |format|
      if @ingredient_inventory.save
        format.html { redirect_to @ingredient_inventory, notice: 'Ingredient inventory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ingredient_inventory }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_inventories/1
  # PATCH/PUT /ingredient_inventories/1.json
  def update
    respond_to do |format|
      if @ingredient_inventory.update(ingredient_inventory_params)
        format.html { redirect_to @ingredient_inventory, notice: 'Ingredient inventory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredient_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_inventories/1
  # DELETE /ingredient_inventories/1.json
  def destroy
    @ingredient_inventory.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_inventories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_inventory
      @ingredient_inventory = IngredientInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_inventory_params
      params.require(:ingredient_inventory).permit(:user_id, :ingredient_id, :amount)
    end
end
