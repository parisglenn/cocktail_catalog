class HomeController < ApplicationController
	def index
		@cocktail = Cocktail.order("RANDOM()").first
		@ingredient = Ingredient.order("RANDOM()").first
		#@ingredient_families = IngredientCategory.find(1).ingredient_families
	    #@filtered_cocktails = filtered_cocktails(@ingredient_modification, @filter_hash)
	    @shared_ingredient_heirarchy = Ingredient.shared_ingredient_heirarchy [Ingredient.new(id:0)], Cocktail.all   
	    @active_filters = []
	    @no_ingredient_filter = true
	    @no_ingredient_type_filter = true
	    @no_ingredient_family_filter = true
	end

end