class CreateIngredientInventories < ActiveRecord::Migration
  def change
    create_table :ingredient_inventories do |t|
      t.integer :user_id
      t.integer :ingredient_id
      t.string :amount

      t.timestamps
    end
  end
end
