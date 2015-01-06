json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :type_id, :name, :brand, :make, :description
  json.url ingredient_url(ingredient, format: :json)
end
