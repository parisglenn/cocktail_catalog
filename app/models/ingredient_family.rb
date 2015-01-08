class IngredientFamily < ActiveRecord::Base
	#attr_accessible :name, :ingredient_category_id
	has_many :ingredient_types
	belongs_to :ingredient_category
end
