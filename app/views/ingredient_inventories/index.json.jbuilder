json.array!(@ingredient_inventories) do |ingredient_inventory|
  json.extract! ingredient_inventory, :id, :user_id, :ingredient_id, :amount
  json.url ingredient_inventory_url(ingredient_inventory, format: :json)
end
