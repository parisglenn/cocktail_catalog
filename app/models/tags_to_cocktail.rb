class TagsToCocktail < ActiveRecord::Base
	belongs_to :tag
	belongs_to :cocktail
end
