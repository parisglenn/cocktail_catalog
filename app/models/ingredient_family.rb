class IngredientFamily < ActiveRecord::Base
	has_many :ingredient_types
	belongs_to :ingredient_category

	def filtered_ingredient_families cocktails
		IngredientType.new.filtered_ingredient_types(cocktails).map{ |i|
			i.ingredient_family
		}.uniq.reject { |b| b.id == self.id }
	end

	def ingredients
		ins = []
		ingredient_types.each do |it|
			ins << it.ingredients
		end
		ins.flatten.uniq
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
		cs.values#.sort { |a,b| a.priority <=> b.priority }
	end

	def to_s
		name
	end
end
