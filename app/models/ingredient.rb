class Ingredient < ActiveRecord::Base
	#attr_accessible :name, :description, :ingredient_type_id, :make, :brand
	has_many :ingredients_to_cocktails
	has_many :cocktails, through: :ingredients_to_cocktails

	belongs_to :ingredient_type
	acts_as_commentable
end
