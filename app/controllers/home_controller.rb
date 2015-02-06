class HomeController < ApplicationController
	def index
		@cocktail = Cocktail.order("RANDOM()").first
		@ingredient = Ingredient.order("RANDOM()").first
	end

end