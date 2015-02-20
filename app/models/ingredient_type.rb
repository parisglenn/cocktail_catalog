class IngredientType < ActiveRecord::Base
	has_many :ingredients
	belongs_to :ingredient_family

	def filtered_ingredient_types cocktails
		Ingredient.new.filtered_shared_ingredients(cocktails).map{ |i|
			i.ingredient_type 
		}.uniq.reject { |b| b.id == self.id }
	end

	def cocktails
		cs = {}
		ingredients.each do |i|
			i.cocktails.each do |c|
				cs[c.id] = c
			end
		end
		cs.values.sort_by{|v| v.priority }
	end

	def cocktails_count
		#this method is fast without the sort above
		cs = {}
		ingredients.each do |i|
			i.cocktails.each do |c|
				cs[c.id] = c
			end
		end
		cs.values.count
	end

	def to_s
		name
	end
end
