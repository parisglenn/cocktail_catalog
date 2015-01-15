class ChangeModificationId < ActiveRecord::Migration
  def change
  	rename_column :ingredients_to_cocktails, :modification_id, :ingredient_modification_id
  end
end
