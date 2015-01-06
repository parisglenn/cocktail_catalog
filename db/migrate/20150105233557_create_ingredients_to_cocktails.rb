class CreateIngredientsToCocktails < ActiveRecord::Migration
  def change
    create_table :ingredients_to_cocktails do |t|
      t.integer :cocktail_id
      t.integer :ingredient_id
      t.integer :modification_id
      t.string :amount

      t.timestamps
    end
  end
end
