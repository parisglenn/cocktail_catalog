class CocktailSource < ActiveRecord::Base
	has_many :cocktails, foreign_key: :source_id, order: 'case when rating is null then -1 else rating end desc, priority asc' #nulls last
end
