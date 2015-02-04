class Ingredient < ActiveRecord::Base
	#attr_accessible :name, :description, :ingredient_type_id, :make, :brand
	has_many :ingredients_to_cocktails
	has_many :cocktails, through: :ingredients_to_cocktails, order: 'priority asc, rating desc'

	belongs_to :ingredient_type
	acts_as_commentable

	def shared_ingredients(ingredient_filter_1=nil, ingredient_filter_2=nil, ingredient_type_filter_1=nil, ingredient_type_filter_2=nil, ingredient_family_filter_1=nil, ingredient_family_filter_2=nil, modification_filter_1=nil)
		buddies = []
		filtered_cocktails(ingredient_filter_1, ingredient_filter_2, ingredient_type_filter_1, ingredient_type_filter_2, ingredient_family_filter_1, ingredient_family_filter_2, modification_filter_1).each do |c|
			buddies << c.ingredients
		end
		buddies.flatten.uniq.reject { |b| b.id == self.id }
	end

	def modifications(ingredient_filter_1=nil, ingredient_filter_2=nil, ingredient_type_filter_1=nil, ingredient_type_filter_2=nil, ingredient_family_filter_1=nil, ingredient_family_filter_2=nil, modification_filter_1=nil)
		mods = []
		filtered_cocktails(ingredient_filter_1, ingredient_filter_2, ingredient_type_filter_1, ingredient_type_filter_2, ingredient_family_filter_1, ingredient_family_filter_2, modification_filter_1).each do |c|
			c.ingredients_to_cocktails.each do |i|
				if i.ingredient == self and i.ingredient_modification.present?
					mods << i.ingredient_modification
				end
			end
		end
		mods 
	end

	def filtered_cocktails(ingredient_filter_1=nil, ingredient_filter_2=nil, ingredient_type_filter_1=nil, ingredient_type_filter_2=nil, ingredient_family_filter_1=nil, ingredient_family_filter_2=nil, modification_filter_1=nil)
		if [ingredient_filter_1, ingredient_filter_2, ingredient_type_filter_1, ingredient_type_filter_2, ingredient_family_filter_1, ingredient_family_filter_2, modification_filter_1].none?
			return cocktails
		else
			qualifying_cocktails = []
			all_filter_result = []
			if1_cocktails = []
			if2_cocktails = []
			itf1_cocktails = []
			itf2_cocktails = []
			iff1_cocktails = []
			iff2_cocktails = []
			mod_cocktails = []
			cocktails.each do |c|
				c.ingredients.each do |i|
					if (ingredient_filter_1 and ingredient_filter_1.id == i.id) 
						if1_cocktails << c
					end
					if (ingredient_filter_2 and ingredient_filter_2.id == i.id)
						if2_cocktails << c
					end
					if (ingredient_type_filter_1 and ingredient_type_filter_1.id == i.ingredient_type.id)
						itf1_cocktails << c
					end
					if (ingredient_type_filter_2 and ingredient_type_filter_2.id == i.ingredient_type.id)
						itf2_cocktails << c
					end
					if (ingredient_family_filter_1 and ingredient_family_filter_1.id == i.ingredient_type.ingredient_family.id)
						iff1_cocktails << c
					end
					if (ingredient_family_filter_2 and ingredient_family_filter_2.id == i.ingredient_type.ingredient_family.id)
						iff2_cocktails << c
					end
				end
				c.ingredients_to_cocktails.each do |i|
					if (modification_filter_1 and modification_filter_1.id == i.ingredient_modification_id)
						mod_cocktails << c
					end
				end
			end
			all_filter_result << if1_cocktails unless if1_cocktails.empty?
			all_filter_result << if2_cocktails unless if2_cocktails.empty?
			all_filter_result << itf1_cocktails unless itf1_cocktails.empty?
			all_filter_result << itf2_cocktails unless itf2_cocktails.empty?
			all_filter_result << iff1_cocktails unless iff1_cocktails.empty?
			all_filter_result << iff2_cocktails unless iff2_cocktails.empty?
			all_filter_result << mod_cocktails unless mod_cocktails.empty?
			if if1_cocktails.first 
				filtered = true
				if1_cocktails.each do |c|
					all_filter_result.each do |fr|
						unless fr.include? c
							filtered = false
							break
						end
					end
					if filtered == true
						qualifying_cocktails << c
					end
				end
			elsif itf1_cocktails.first
				filtered = true
				itf1_cocktails.each do |c|
					all_filter_result.each do |fr|
						unless fr.include? c
							filtered = false
							break
						end
					end
					if filtered == true
						qualifying_cocktails << c
					end
				end
			elsif iff1_cocktails.first 
				filtered = true
				itf1_cocktails.each do |c|
					all_filter_result.each do |fr|
						unless fr.include? c
							filtered = false
							break
						end
					end
					if filtered == true
						qualifying_cocktails << c
					end
				end
			elsif mod_cocktails.first
				filtered = true
				mod_cocktails.each do |c|
					all_filter_result.each do |fr|
						unless fr.include? c
							filtered = false
							break
						end
					end
					if filtered == true
						qualifying_cocktails << c
					end
				end		
			end
		end
		qualifying_cocktails
	end

	def shared_types(ingredient_filter_1=nil, ingredient_filter_2=nil, ingredient_type_filter_1=nil, ingredient_type_filter_2=nil, ingredient_family_filter_1=nil, ingredient_family_filter_2=nil, modification_filter_1=nil)
		shared_ingredients(ingredient_filter_1, ingredient_filter_2, ingredient_type_filter_1, ingredient_type_filter_2, ingredient_family_filter_1, ingredient_family_filter_2, modification_filter_1).map { |si| si.ingredient_type }.uniq
	end

	def shared_families(ingredient_filter_1=nil, ingredient_filter_2=nil, ingredient_type_filter_1=nil, ingredient_type_filter_2=nil, ingredient_family_filter_1=nil, ingredient_family_filter_2=nil, modification_filter_1=nil)
		shared_types(ingredient_filter_1, ingredient_filter_2, ingredient_type_filter_1, ingredient_type_filter_2, ingredient_family_filter_1, ingredient_family_filter_2, modification_filter_1).map { |si| si.ingredient_family }.uniq
	end

	def show(show_cocktails=false)
		if show_cocktails
			" #{name} (in #{cocktails.count} cocktails) "
		else
			name
		end
	end

	def to_s
		name
	end

	def filtered_cocktails_or(ingredient_filter_1=nil, ingredient_filter_2=nil, ingredient_type_filter_1=nil, ingredient_type_filter_2=nil, ingredient_family_filter_1=nil, ingredient_family_filter_2=nil, modification_filter_1=nil)
		#this filtering works for or logic, but i think the filter would be best used by intersection, not union
		if [ingredient_filter_1, ingredient_filter_2, ingredient_type_filter_1, ingredient_type_filter_2, ingredient_family_filter_1, ingredient_family_filter_2].none?
			return cocktails
		else
			qualifying_cocktails = []
			cocktails.each do |c|
				c.ingredients.each do |i|
					if (ingredient_filter_1 and ingredient_filter_1.id == i.id) or
					(ingredient_filter_2 and ingredient_filter_2.id == i.id) or
					(ingredient_type_filter_1 and ingredient_type_filter_1.id == i.ingredient_type.id) or
					(ingredient_type_filter_2 and ingredient_type_filter_2.id == i.ingredient_type.id) or
					(ingredient_family_filter_1 and ingredient_family_filter_1.id == i.ingredient_type.ingredient_family.id) or
					(ingredient_family_filter_2 and ingredient_family_filter_2.id == i.ingredient_type.ingredient_family.id)
						qualifying_cocktails << c
						break
					end
				end
			end
		end
		qualifying_cocktails
	end

end

	
#i want to show other ingredients that are paired with the current ingredient I'm viewing
	#get all cocktails that this ingredient is in, then get a unique list of each ingredient 
		#that is in each one of those cocktails