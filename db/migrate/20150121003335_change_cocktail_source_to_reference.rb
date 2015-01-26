class ChangeCocktailSourceToReference < ActiveRecord::Migration
  def change
  	remove_column :cocktails, :source
  	add_column :cocktails, :source_id, :integer
  # 	ActiveRecord::Base.connection.execute("
		# ALTER TABLE cocktails ALTER COLUMN source TYPE INT4 USING COALESCE(exch_id::INT4,0);
  #  ")
  end
end
