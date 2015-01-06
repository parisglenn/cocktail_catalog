class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :glass_id
      t.text :source
      t.integer :rating
      t.integer :priority

      t.timestamps
    end
  end
end
