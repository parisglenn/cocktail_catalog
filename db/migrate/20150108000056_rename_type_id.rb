class RenameTypeId < ActiveRecord::Migration
  def change
  	rename_column :ingredients , :type_id, :ingredient_type_id
  end
end
