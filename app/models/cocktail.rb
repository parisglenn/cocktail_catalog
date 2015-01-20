class Cocktail < ActiveRecord::Base
	#attr_accessible :name, :description, :instructions, :glass_id, :source, :rating, :priority
	has_many :ingredients, through: :ingredients_to_cocktails
	has_many :ingredients_to_cocktails
	belongs_to :glass
	accepts_nested_attributes_for :ingredients_to_cocktails, :reject_if => :all_blank, :allow_destroy => true
	acts_as_commentable
end