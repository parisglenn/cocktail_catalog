class Cocktail < ActiveRecord::Base
	#attr_accessible :name, :description, :instructions, :glass_id, :source, :rating, :priority
	has_many :ingredients, through: :ingredients_to_cocktails
	belongs_to :glass
end
