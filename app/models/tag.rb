class Tag < ActiveRecord::Base
	has_many :tags_to_cocktails
	has_many :cocktails, through: :tags_to_cocktails
end
