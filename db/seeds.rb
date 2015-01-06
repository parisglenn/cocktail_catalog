# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ic1=IngredientCategory.create!({
	name: 'Liquor'
	})
ic2=IngredientCategory.create!({
	name: 'Modifier'
	})
ic3=IngredientCategory.create!({
	name: 'Sweetener'
	})
ic4=IngredientCategory.create!({
	name: 'Texture'
	})
ic5=IngredientCategory.create!({
	name: 'Garnish'
	})

if1=IngredientFamily.create!({
	name: 'Whiskey', category_id: ic1.id
	})
if2=IngredientFamily.create!({
	name: 'Agave', category_id: ic1.id
	})
if3=IngredientFamily.create!({
	name: 'Rum', category_id: ic1.id
	})
if4=IngredientFamily.create!({
	name: 'Gin', category_id: ic1.id
	})
if5=IngredientFamily.create!({
	name: 'Dairy', category_id: ic4.id
	})
if6=IngredientFamily.create!({
	name: 'Minerals', category_id: ic4.id
	})
if7=IngredientFamily.create!({
	name: 'Amero', category_id: ic2.id
	})
if8=IngredientFamily.create!({
	name: 'Apertif', category_id: ic2.id
	})
if9=IngredientFamily.create!({
	name: 'Syrup', category_id: ic3.id
	})
if10=IngredientFamily.create!({
	name: 'Fruit', category_id: ic5.id
	})
if11=IngredientFamily.create!({
	name: 'Fruit Juice', category_id: ic3.id
	})
if12=IngredientFamily.create!({
	name: 'Fortified Wine', category_id: ic2.id
	})
if13=IngredientFamily.create!({
	name: 'Beer', category_id: ic2.id
	})
if14=IngredientFamily.create!({
	name: 'Brandy', category_id: ic1.id
	})


it1=IngredientType.create!({
	name: 'Scotch', family_id: if1.id
	})
it2=IngredientType.create!({
	name: 'Bourbon', family_id: if1.id
	})
it3=IngredientType.create!({
	name: 'Rye', family_id: if1.id
	})
it4=IngredientType.create!({
	name: 'Mezcal', family_id: if2.id
	})
it5=IngredientType.create!({
	name: 'Joven Tequila', family_id: if2.id
	})
it51=IngredientType.create!({
	name: 'Repasado Tequila', family_id: if2.id
	})
it6=IngredientType.create!({
	name: 'London Dry Gin', family_id: if4.id
	})
it61=IngredientType.create!({
	name: 'Sloe Gin', family_id: if4.id
	})
it7=IngredientType.create!({
	name: 'Egg', family_id: if5.id
	})
it8=IngredientType.create!({
	name: 'Salt', family_id: if6.id
	})
it9=IngredientType.create!({
	name: 'Simple Syrup', family_id: if9.id
	})
it10=IngredientType.create!({
	name: 'Lime', family_id: if10.id
	})
it11=IngredientType.create!({
	name: 'Port', family_id: if12.id
	})
it12=IngredientType.create!({
	name: 'Sherry', family_id: if12.id
	})
it13=IngredientType.create!({
	name: 'Dry Vermouth', family_id: if12.id
	})
it14=IngredientType.create!({
	name: 'Sweet Vermouth', family_id: if12.id
	})
it15=IngredientType.create!({
	name: 'Congac', family_id: if14.id
	})
it16=IngredientType.create!({ #???????????
	name: 'VS', family_id: if14.id
	})
it17=IngredientType.create!({ #???????????
	name: 'VSOP', family_id: if14.id
	})
it18=IngredientType.create!({
	name: 'IPA', family_id: if13.id
	})
it19=IngredientType.create!({
	name: 'Cynar', family_id: if8.id
	})


i1=Ingredient.create!({
	name: 'Old Overhoort Rye', brand: 'Old Overhoort', make: 'Rye', type_id: it3.id, description: 'Cheap and decent'
	})
i2=Ingredient.create!({
	name: 'Laphroiag 10', brand: 'Laphroiag', make: '10 year', type_id: it1.id, description: 'Nice and peaty'
	})
i3=Ingredient.create!({
	name: 'Egg white', brand: 'Cage Free', make: 'Organic', type_id: it7.id, description: 'Frothy'
	})
i4=Ingredient.create!({
	name: 'Kosher salt', brand: 'Sea', make: 'Kosher', type_id: it8.id, description: 'Makes for a great rim'
	})
i5=Ingredient.create!({
	name: 'Simple Syrup', brand: 'Homemade', make: 'Tap water', type_id: it9.id, description: 'Easy way to add sugar'
	})
i6=Ingredient.create!({
	name: 'Lime Wedge', brand: 'Homemade', make: 'Organic', type_id: it10.id, description: 'Easy way to add sugar'
	})
i7=Ingredient.create!({
	name: 'Beefeater London Dry', brand: 'Beefeater', make: 'London dry', type_id: it6.id, description: 'A great go-to gin'
	})
i7=Ingredient.create!({
	name: 'Cynar', brand: 'Cynar', make: 'Cynar', type_id: it6.id, description: 'A great go-to gin'
	})