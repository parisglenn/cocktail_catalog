class RenameFamilyTypeId < ActiveRecord::Migration
  def change
  	rename_column :ingredient_types , :family_id, :ingredient_family_id
  end
end
