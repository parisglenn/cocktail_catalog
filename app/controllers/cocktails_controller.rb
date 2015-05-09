class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  before_action :set_dependents, only: [:new, :edit]

  # GET /cocktails
  # GET /cocktails.json
  def index
    @cocktails = Cocktail.all.includes(:cocktail_source, :glass, :ingredients)
  end

  # GET /cocktails/1
  # GET /cocktails/1.json
  def show
    @ingredients = @cocktail.ingredients
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
    @ingredient = IngredientsToCocktail.new
    @ingredients = 12.times.map { |i| @ingredient }
    @tags = Tag.all
    @cocktail_tags = @cocktail.tags_to_cocktails.build
  end

  # GET /cocktails/1/edit
  def edit
    @ingredients = @cocktail.ingredients_to_cocktails
    empty = 12 - @ingredients.count
    @ingredient = IngredientsToCocktail.new
    @ingredients += empty.times.map { |i| @ingredient }
    @tags = Tag.all
    @cocktail_tags = @cocktail.tags_to_cocktails.build
  end

  # POST /cocktails
  # POST /cocktails.json
  def create
    @cocktail = Cocktail.new(cocktail_params)
    params[:cocktail][:tags].each do |tag|
      unless tag.empty?
        @cocktail.tags_to_cocktails.build(tag_id: tag)
      end
    end
    respond_to do |format|
      if @cocktail.save
        # unless rating.blank? and @cocktail.tags.map(&:id).include? {id of been made}
        manage_ingredients
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cocktail }
      else
        format.html { render action: 'new' }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocktails/1
  # PATCH/PUT /cocktails/1.json
  def update
    @cocktail.tags_to_cocktails.destroy_all #how do i get rid of the need for this?
    params[:cocktail][:tags].each do |tag|
      unless tag.empty?
        @cocktail.tags_to_cocktails.build(tag_id: tag)
      end
    end
    respond_to do |format|
      manage_ingredients
      if @cocktail.update(cocktail_params) 
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to edit_cocktail_url @cocktail } 
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocktails/1
  # DELETE /cocktails/1.json
  def destroy
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to cocktails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
      #@ingredients = 12.times { @cocktail.ingredients_to_cocktails.build }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cocktail_params
      params.require(:cocktail).permit(:name, :description, :instructions, :glass_id, :source_id, :rating, :priority, 
        ingredients_to_cocktails_attributes: [:id, :_destroy, :ingredient_id, :ingredient_modification_id, :cocktail_id, :amount],
        tags: [:cocktail_id, :tag_id, :id]
        )
      #params.require(:tag).permit(:id)
    end

    def set_dependents
      @glasses_dropdown = Glass.all.map { |g| [g.name, g.id] }
      @source_dropdown = CocktailSource.all.map { |c| [c.name, c.id] }
      @rating_dropdown = [nil] + (1..10).map { |n| [n, n] }
      @priority_dropdown =  [nil] + (1..4).map { |n| [n, n] }
      @ingredients_dropdown = Ingredient.all.map { |i| ["#{i.name} (#{i.ingredient_type.name})", i.id] }
      @modifications_dropdown = IngredientModification.all.map { |i| [i.name, i.id] }
    end

    def manage_ingredients
      @ingredients = @cocktail.ingredients
      @cocktail.ingredients_to_cocktails.destroy_all
      #binding.pry
      params.each do |k, v|
        if k.include? 'ingredient'
          v.each do |k1, v1|
            if v1.present? and v1.to_i > 0 
              itc = IngredientsToCocktail.new(v)
              itc.cocktail_id = @cocktail.id
              itc.save
              break
            end
          end
        end
      end
    end
end
