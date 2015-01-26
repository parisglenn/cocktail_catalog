class CreateCocktailSources < ActiveRecord::Migration
  def change
    create_table :cocktail_sources do |t|
      t.string :name

      t.timestamps
    end
  end
end
