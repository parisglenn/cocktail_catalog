json.array!(@cocktails) do |cocktail|
  json.extract! cocktail, :id, :name, :description, :instructions, :glass_id, :source, :rating, :priority
  json.url cocktail_url(cocktail, format: :json)
end
