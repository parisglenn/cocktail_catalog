class Cocktail < ActiveRecord::Base
	#attr_accessible :name, :description, :instructions, :glass_id, :source, :rating, :priority
	has_many :ingredients_to_cocktails
	has_many :ingredients, through: :ingredients_to_cocktails
	has_many :ingredient_modifications, through: :ingredients_to_cocktails
	belongs_to :glass
	belongs_to :cocktail_source, foreign_key: 'source_id'
	accepts_nested_attributes_for :ingredients_to_cocktails, :reject_if => :all_blank, :allow_destroy => true
	acts_as_commentable

	#remove this method, just here for developing other methods
	#child ingredients should never be filtered or have filters
	# def filtered_child_ingredients(ingredient_filter_1=nil, ingredient_filter_2=nil, ingredient_type_filter_1=nil, ingredient_type_filter_2=nil, ingredient_family_filter_1=nil, ingredient_family_filter_2=nil, modification_filter_1=nil)
	# 	if [ingredient_filter_1, ingredient_filter_2, ingredient_type_filter_1, ingredient_type_filter_2, ingredient_family_filter_1, ingredient_family_filter_2, modification_filter_1].none?
	# 		return ingredients
	# 	else
	# 		ins = []
	# 		filtered_cocktails(ingredient_filter_1,ingredient_filter_2,ingredient_type_filter_1,ingredient_type_filter_2,ingredient_family_filter_1,ingredient_family_filter_2,modification_filter_1).
	# 		each do |cocktail|
	# 			cocktail.ingredients.each do |i|
	# 				if ingredients.include? i
	# 					ins << i 
	# 				end
	# 			end
	# 		end
	# 	end
	# 	ins.uniq
	# end

	def some_ingredients
		ingredients.map{|i| i.name}.join(', ')[0..60]+'...'
	end
end