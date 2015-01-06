class CreateIngredientFamilies < ActiveRecord::Migration
  def change
    create_table :ingredient_families do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
