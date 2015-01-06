class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :type_id
      t.string :name
      t.string :brand
      t.string :make
      t.text :description

      t.timestamps
    end
  end
end
