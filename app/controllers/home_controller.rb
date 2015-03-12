class HomeController < ApplicationController
	def index
		@cocktail = Cocktail.order("RANDOM()").first
		@ingredient = Ingredient.order("RANDOM()").first
		@ingredient_families = IngredientFamily.all 
	    @shared_ingredient_heirarchy = Ingredient.shared_ingredient_heirarchy [Ingredient.new(id:0)], Cocktail.all   
	    @active_filters = []
	    @no_ingredient_filter = true
	    @no_ingredient_type_filter = true
	    @no_ingredient_family_filter = true
	    @no_ingredient_modification_filter = true
	    @ingredient_modifications = IngredientModification.all
	end

end