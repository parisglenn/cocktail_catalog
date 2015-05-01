class TagsToCocktail < ActiveRecord::Base
	belongs_to :tag
	belongs_to :cocktail
	validates_uniqueness_of :tag_id, scope: :cocktail_id
end
