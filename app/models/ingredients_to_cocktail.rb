class IngredientsToCocktail < ActiveRecord::Base
	belongs_to :cocktail
	belongs_to :ingredient
	belongs_to :ingredient_modification


	def show(show_cocktails=false)
		display = "#{amount}"
		juice = false
		if ingredient_modification 
			if ingredient_modification.id == 1
				display += " #{ingredient.name}"
				display += " juice "
				juice = true
			end
			if ingredient_modification.id == 43
				display += " #{ingredient.name}"
				display += " powder "
				juice = true
			end
			if ingredient_modification.id == 44
				display += " #{ingredient.name}"
				display += " water "
				juice = true
			end
			if juice == false
				display += " #{ingredient_modification.name}"
			end
		end
		if juice
			display
		elsif show_cocktails
			display += " #{ingredient.name} (in #{ingredient.cocktails.count} cocktails) "
		else
			display += " #{ingredient.name}"
		end

	end
end
