json.array!(@ingredient_modifications) do |ingredient_modification|
  json.extract! ingredient_modification, :id, :name
  json.url ingredient_modification_url(ingredient_modification, format: :json)
end
