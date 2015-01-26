json.array!(@cocktail_sources) do |cocktail_source|
  json.extract! cocktail_source, :id, :name
  json.url cocktail_source_url(cocktail_source, format: :json)
end
