class IngredientType < ActiveRecord::Base
	has_many :ingredients
	belongs_to :ingredient_family

	def cocktails
		cs = {}
		ingredients.each do |i|
			i.cocktails.each do |c|
				cs[c.id] = c
			end
		end
		cs.values.order_by{|v| v.priority }
	end

	def cocktails_count
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
