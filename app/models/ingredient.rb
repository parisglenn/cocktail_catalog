class Ingredient < ActiveRecord::Base
	#attr_accessible :name, :description, :ingredient_type_id, :make, :brand
	has_many :ingredients_to_cocktails
	has_many :cocktails, through: :ingredients_to_cocktails, order: 'priority asc, rating desc'

	belongs_to :ingredient_type
	acts_as_commentable

	def self.all_with_cocktail_priorities
		Ingredient.find_by_sql("with p1table as (select i.id,
			i.name ingredient,
			count(distinct(c.name)) p1s from ingredients_to_cocktails itc
			left join cocktails c on itc.cocktail_id = c.id 
			left join ingredients i on i.id = itc.ingredient_id
			where priority < 2
			group by i.id, i.name
			order by i.id
			), p2table as (select i.id,
			i.name ingredient, 
			count(distinct(c.name)) p2s from ingredients_to_cocktails itc
			left join cocktails c on itc.cocktail_id = c.id 
			left join ingredients i on i.id = itc.ingredient_id
			where priority < 3
			group by i.id, i.name
			order by i.id), p3table as (select i.id,
			i.name ingredient, 
			count(distinct(c.name)) p3s from ingredients_to_cocktails itc
			left join cocktails c on itc.cocktail_id = c.id 
			left join ingredients i on i.id = itc.ingredient_id
			where priority < 4
			group by i.id, i.name
			order by i.id), p4table as (select i.id,
			i.name ingredient, i.ingredient_type_id,
			count(distinct(c.name)) p4s from ingredients_to_cocktails itc
			left join cocktails c on itc.cocktail_id = c.id 
			left join ingredients i on i.id = itc.ingredient_id
			where priority < 5
			group by i.id, i.name
			order by i.id)
			select p4table.*, ints.name ingredient_type_name, ifams.id ingredient_family_id, ifams.name ingredient_family_name, 
			icats.id ingredient_category_id, icats.name ingredient_category_name,
			coalesce(p3table.p3s, 0) p3s, coalesce(p2table.p2s, 0) p2s, coalesce(p1table.p1s, 0) p1s
			from p4table
			left join p3table on p3table.id = p4table.id
			left join p2table on p2table.id = p3table.id
			left join p1table on p1table.id = p2table.id
			left join ingredient_types ints on ints.id = p4table.ingredient_type_id
			left join ingredient_families ifams on ifams.id = ints.ingredient_family_id
			left join ingredient_categories icats on icats.id = ifams.ingredient_category_id
		")
	end

	def filtered_shared_ingredients cocktails
		cocktails.map { |c| c.ingredients }.flatten.uniq.reject { |b| b.id == self.id } 
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
