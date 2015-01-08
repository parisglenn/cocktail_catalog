class IngredientType < ActiveRecord::Base
	#attr_accessible :name, :ingredient_family_id
	has_many :ingredients
	belongs_to :ingredient_family
end
