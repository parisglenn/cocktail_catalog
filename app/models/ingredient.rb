class Ingredient < ActiveRecord::Base
	#attr_accessible :name, :description, :ingredient_type_id, :make, :brand
	has_many :ingredients_to_cocktails
	has_many :cocktails, through: :ingredients_to_cocktails, order: 'priority asc, rating desc'

	belongs_to :ingredient_type
	acts_as_commentable

	def shared_ingredients
		buddies = []
		cocktails.each do |c|
			buddies << c.ingredients
		end
		buddies.flatten.uniq.reject { |b| b.id == self.id }

		# Ingredient.find_by_sql("select distinct(ingredient_id), i.* from ingredients i 
		# 	left join ingredients_to_cocktails itc on itc.ingredient_id = i.id
		# 	where c.id = #{self.}")
	end

	def show(show_cocktails=false)
		if show_cocktails
			" #{name} (in #{cocktails.count} cocktails) "
		else
			name
		end
	end
end

	
#i want to show other ingredients that are paired with the current ingredient I'm viewing
	#get all cocktails that this ingredient is in, then get a unique list of each ingredient 
		#that is in each one of those cocktails