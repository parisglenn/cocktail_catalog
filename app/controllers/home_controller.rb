class HomeController < ApplicationController
	def index
		@cocktail = Cocktail.order("RANDOM()").first
		@ingredient = Ingredient.order("RANDOM()").first
		@ingredient_families = IngredientCategory.find(1).ingredient_families
	end

end