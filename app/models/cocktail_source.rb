class CocktailSource < ActiveRecord::Base
	has_many :cocktails, foreign_key: :source_id
end
