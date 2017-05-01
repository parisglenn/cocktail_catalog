class DescToMoidifications < ActiveRecord::Migration
  def change
    add_column :ingredient_modifications, :description, :text
  end
end
