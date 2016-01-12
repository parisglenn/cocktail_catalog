class Cocktail < ActiveRecord::Base
	#attr_accessible :name, :description, :instructions, :glass_id, :source, :rating, :priority
	has_many :ingredients_to_cocktails
	has_many :ingredients, through: :ingredients_to_cocktails
	has_many :ingredient_modifications, through: :ingredients_to_cocktails
	has_many :tags_to_cocktails
	has_many :tags, through: :tags_to_cocktails
	belongs_to :glass
	belongs_to :cocktail_source, foreign_key: 'source_id'
	accepts_nested_attributes_for :ingredients_to_cocktails, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :tags_to_cocktails, :reject_if => :all_blank, :allow_destroy => true
	acts_as_commentable
	after_save :all_cocktails

	def all_cocktails
		unless tags_to_cocktails.map(&:tag_id).include? 17
			TagsToCocktail.create!({cocktail_id: id, tag_id: 17})
		end
	end

	def some_ingredients
		ingredients.map{|i| i.name}.join(', ')[0..60]+'...'
	end

	def ratings
		rating || -1
	end
end