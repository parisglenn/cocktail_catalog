class RenameCategoryId < ActiveRecord::Migration
  def change
  	rename_column :ingredient_families , :category_id, :ingredient_category_id
  end
end
