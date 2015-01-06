class CreateIngredientModifications < ActiveRecord::Migration
  def change
    create_table :ingredient_modifications do |t|
      t.string :name

      t.timestamps
    end
  end
end
