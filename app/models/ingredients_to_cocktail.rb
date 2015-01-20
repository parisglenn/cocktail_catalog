class IngredientsToCocktail < ActiveRecord::Base
	belongs_to :cocktail
	belongs_to :ingredient
	belongs_to :ingredient_modification


	def show
		display = "#{amount}"
		display += " #{ingredient_modification.name}" if ingredient_modification
		display += " #{ingredient.name}"
	end
end
