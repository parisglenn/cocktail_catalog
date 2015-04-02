class CreateTagsToCocktails < ActiveRecord::Migration
  def change
    create_table :tags_to_cocktails do |t|
      t.integer :cocktail_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
