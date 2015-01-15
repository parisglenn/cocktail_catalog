json.array!(@ingredient_families) do |ingredient_family|
  json.extract! ingredient_family, :id, :name, :ingredient_category_id
  json.url ingredient_family_url(ingredient_family, format: :json)
end
