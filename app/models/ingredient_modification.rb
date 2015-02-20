class IngredientModification < ActiveRecord::Base
	has_many :ingredients_to_cocktails
	has_many :cocktails, through: :ingredients_to_cocktails, order: 'priority asc, rating desc'

	def self.filtered_modifications cocktails
		mods = []
		cocktails.each do |c|
			c.ingredients_to_cocktails.each do |i|
				if i.ingredient_modification.present?
					mods << i.ingredient_modification
				end
			end
		end
		mods.uniq#.reject { |b| b.id == self.id }
	end

end
