module CocktailsHelper

	def build_filter_hash params
	    @filter_hash = {}
	    @filter_hash[:ingredient_filter_1] = Ingredient.find params[:ingredient_filter_1] if params[:ingredient_filter_1].present? 
	    if params[:ingredient_filter_2].present?
	      @filter_hash[:ingredient_filter_2]= Ingredient.find params[:ingredient_filter_2]
	      @no_ingredient_filter = true
	    end
	    @filter_hash[:ingredient_type_filter_1] = IngredientType.find params[:ingredient_type_filter_1] if params[:ingredient_type_filter_1].present?
	    if params[:ingredient_type_filter_2].present?
	       @filter_hash[:ingredient_type_filter_2] = IngredientType.find params[:ingredient_type_filter_2] 
	      @no_ingredient_type_filter = true
	    end
	    @filter_hash[:ingredient_family_filter_1] = IngredientFamily.find params[:ingredient_family_filter_1] if params[:ingredient_family_filter_1].present?
	    if params[:ingredient_family_filter_2].present?
	      @filter_hash[:ingredient_family_filter_2] = IngredientFamily.find params[:ingredient_family_filter_2] 
	      @no_ingredient_family_filter = true
	    end
	    if params[:modification_filter_1].present?
	      @filter_hash[:modification_filter_1] = IngredientModification.find params[:modification_filter_1]
	      @no_modification_filter = true
	    end
	end


	def filtered_cocktails(obj, filter_hash={})
		if filter_hash.values.none?
			return obj.cocktails.uniq.sort { |a,b| a.priority <=> b.priority }
		else
			#clean up how these lists are created
			qualifying_cocktails = []
			all_filter_result = []
			if1_cocktails = []
			if2_cocktails = []
			itf1_cocktails = []
			itf2_cocktails = []
			iff1_cocktails = []
			iff2_cocktails = []
			mod_cocktails = []
			obj.cocktails.each do |c|
				c.ingredients.each do |i|
					if (filter_hash[:ingredient_filter_1] and filter_hash[:ingredient_filter_1].id == i.id) 
						if1_cocktails << c
					end
					if (filter_hash[:ingredient_filter_2] and filter_hash[:ingredient_filter_2].id == i.id)
						if2_cocktails << c
					end
					if (filter_hash[:ingredient_type_filter_1] and filter_hash[:ingredient_type_filter_1].id == i.ingredient_type.id)
						itf1_cocktails << c
					end
					if (filter_hash[:ingredient_type_filter_2] and filter_hash[:ingredient_type_filter_2].id == i.ingredient_type.id)
						itf2_cocktails << c
					end
					if (filter_hash[:ingredient_family_filter_1] and filter_hash[:ingredient_family_filter_1].id == i.ingredient_type.ingredient_family.id)
						iff1_cocktails << c
					end
					if (filter_hash[:ingredient_family_filter_2] and filter_hash[:ingredient_family_filter_2].id == i.ingredient_type.ingredient_family.id)
						iff2_cocktails << c
					end
				end
				c.ingredients_to_cocktails.each do |i|
					if (filter_hash[:modification_filter_1] and filter_hash[:modification_filter_1].id == i.ingredient_modification_id)
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
			all_filter_result.first.each do |c|
				filtered = true
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
			return qualifying_cocktails.uniq.sort { |a,b| a.priority <=> b.priority }
		end
	end
end
