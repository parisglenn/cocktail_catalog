class IngredientFamily < ActiveRecord::Base
	has_many :ingredient_types
	belongs_to :ingredient_category

	def self.filtered_ingredient_families cocktails
		IngredientType.filtered_ingredient_types(cocktails).map{ |i|
			i.ingredient_family
		}.uniq
		#Cocktail.filtered_ingredient_types(cocktails).map{ |i| i.ingredient_type }.uniq
	end
	
	def cocktails
		cs = {}
		ingredient_types.each do |it|
			it.ingredients.each do |i|
				i.cocktails.each do |c|
					cs[c.id] = c
				end
			end
		end
		cs.values.sort { |a,b| a.priority <=> b.priority }
		#order_by{|v| v.priority }
	end

	def to_s
		name
	end
end
