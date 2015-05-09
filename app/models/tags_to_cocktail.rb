class TagsToCocktail < ActiveRecord::Base
	belongs_to :tag
	belongs_to :cocktail
	#validates_uniqueness_of :cocktail_id, scope: :tag_id
end
