# Glass.create!({
# 	name: 'Coupe'
# 	})
# Glass.create!({
# 	name: 'V martini'
# 	})
# Glass.create!({
# 	name: 'Nick and Nora'
# 	})
# Glass.create!({
# 	name: 'Port'
# 	})
# Glass.create!({
# 	name: 'Fancy Fizz'
# 	})
# Glass.create!({
# 	name: 'Fizz'
# 	})
# Glass.create!({
# 	name: 'Champagne flute'
# 	})
# Glass.create!({
# 	name: 'Single rocks'
# 	})
# Glass.create!({
# 	name: 'Double rocks'
# 	})
# Glass.create!({
# 	name: 'Snifter'
# 	})
# Glass.create!({
# 	name: 'Julep tin'
# 	})
# Glass.create!({
# 	name: 'Tiki mug'
# 	})
# Glass.create!({
# 	name: 'Ceramic coconut'
# 	})
# Glass.create!({
# 	name: 'Pilsner'
# 	})
# Glass.create!({
# 	name: 'Highball'
# 	})
# Glass.create!({
# 	name: 'Punch bowl'
# 	})

# IngredientModification.create!({
# 	name: 'Juice of'
# 	})
# IngredientModification.create!({
# 	name: 'Chile de Arbol infused'
# 	})
# IngredientModification.create!({
# 	name: 'Ancho Chile infused'
# 	})
# IngredientModification.create!({
# 	name: 'Espresso infused'
# 	})
# IngredientModification.create!({
# 	name: 'Coffee and chile infused'
# 	})
# IngredientModification.create!({
# 	name: 'Jalepeno infused'
# 	})
# IngredientModification.create!({
# 	name: 'Red thai chile infused'
# 	})
# IngredientModification.create!({
# 	name: 'Apricot infused'
# 	})
# IngredientModification.create!({
# 	name: 'Banana chip infused'
# 	})
# IngredientModification.create!({
# 	name: 'Dried currant infused'
# 	})
# IngredientModification.create!({
# 	name: 'Fig infused'
# 	})
# IngredientModification.create!({
# 	name: 'Fuji apple infused'
# 	})
# IngredientModification.create!({
# 	name: 'Granny smith apple infused'
# 	})
# IngredientModification.create!({
# 	name: 'Grapefruit infused'
# 	})
# IngredientModification.create!({
# 	name: 'Pineapple infused'
# 	})
# IngredientModification.create!({
# 	name: 'Spiced Pear infused'
# 	})
# IngredientModification.create!({
# 	name: 'Strawberry and pineapple infused infused'
# 	})
# IngredientModification.create!({
# 	name: 'Watermelon infused'
# 	})
# IngredientModification.create!({
# 	name: 'Basil infused'
# 	})
# IngredientModification.create!({
# 	name: 'Lavender infused'
# 	})
# IngredientModification.create!({
# 	name: 'Pennyroyal infused'
# 	})
# IngredientModification.create!({
# 	name: 'Sage infused'
# 	})
# IngredientModification.create!({
# 	name: 'Chamomile infused'
# 	})
# IngredientModification.create!({
# 	name: 'Cinnamon orange tea infused'
# 	})
# IngredientModification.create!({
# 	name: 'Coconut green tea infused'
# 	})
# IngredientModification.create!({
# 	name: 'Earl grey infused'
# 	})
# IngredientModification.create!({
# 	name: 'Lapsang souchong infused'
# 	})
# IngredientModification.create!({
# 	name: 'Queen of earl tea infused'
# 	})
# IngredientModification.create!({
# 	name: 'Scarlet glow tea infused'
# 	})
# IngredientModification.create!({
# 	name: 'Summer Royale tea infused'
# 	})
# IngredientModification.create!({
# 	name: 'Cacao nib infused'
# 	})
# IngredientModification.create!({
# 	name: 'Chamomile infused'
# 	})
# IngredientModification.create!({
# 	name: 'Coffee infused'
# 	})
# IngredientModification.create!({
# 	name: 'Pecan infused'
# 	})
# IngredientModification.create!({
# 	name: 'Chamomile infused'
# 	})
# IngredientModification.create!({
# 	name: 'Rose infused'
# 	})
# IngredientModification.create!({
# 	name: 'Sugar snap pea infused'
# 	})
# IngredientModification.create!({
# 	name: 'Chamomile infused'
# 	})
# IngredientModification.create!({
# 	name: 'Szechuan peppercorn infused'
# 	})
# IngredientModification.create!({
# 	name: 'Honey nut cheerio infused'
# 	})




# ic1=IngredientCategory.create!({
# 	name: 'Spirit'
# 	})
# 	if101=IngredientFamily.create!({
# 		name: 'Whiskey', ingredient_category_id: ic1.id
# 		})
# 		it10101=IngredientType.create!({
# 			name: 'Bourbon', ingredient_family_id: if101.id
# 			})
# 			Ingredient.create!({
# 				name: "Buffalo Trace Kentucky Straight Bourbon", ingredient_type_id: it10101.id
# 				})
# 			Ingredient.create!({
# 				name: "Elijah Craig 12-Year Kentucky Straight Bourbon", ingredient_type_id: it10101.id
# 				})
# 			Ingredient.create!({
# 				name: "Old Grand-Dad 114 Kentucky Straight Bourbon", ingredient_type_id: it10101.id
# 				})
# 			Ingredient.create!({
# 				name: "Knob Creek Single Barrel Reserve (120) Kentucky Straight Bourbon", ingredient_type_id: it10101.id
# 				})
# 		it10102=IngredientType.create!({
# 			name: 'Rye', ingredient_family_id: if101.id
# 			})
# 			Ingredient.create!({
# 				name: "Old Overholt Kentucky Straight Rye", ingredient_type_id: it10102.id
# 				})
# 			Ingredient.create!({
# 				name: "Rittenhouse Bonded 100-Proof Kentucky Straight Rye Whiskey", ingredient_type_id: it10102.id
# 				})

# 		it10103=IngredientType.create!({
# 			name: 'Tennessee sour mash', ingredient_family_id: if101.id
# 			})
# 		it10104=IngredientType.create!({
# 			name: 'Bottled in bond', ingredient_family_id: if101.id
# 			})
# 		it10105=IngredientType.create!({
# 			name: 'Scotch', ingredient_family_id: if101.id
# 			})
# 			Ingredient.create!({
# 				name: "Compass Box Asyla Blended Scotch", ingredient_type_id: it10105.id
# 				})
# 			Ingredient.create!({
# 				name: "Famous Grouse Blended Scotch", ingredient_type_id: it10105.id
# 				})
# 			Ingredient.create!({
# 				name: "Laphroaig 10-Year Islay Single-Malt Scotch", ingredient_type_id: it10105.id
# 				})
# 		it10106=IngredientType.create!({
# 			name: 'Irish Whiskey', ingredient_family_id: if101.id
# 			})
# 			Ingredient.create!({
# 				name: "Knappogue Castle 12-Year Irish Whiskey", ingredient_type_id: it10106.id
# 				})
# 			Ingredient.create!({
# 				name: "Redbreash 12-Year Irish Whiskey", ingredient_type_id: it10106.id
# 				})
# 	if102=IngredientFamily.create!({ #change this level to tequila and mezcal
# 		name: 'Tequila', ingredient_category_id: ic1.id
# 		})
# 		it10201=IngredientType.create!({
# 			name: 'Blanco, plata, platinum or white Tequila', ingredient_family_id: if102.id
# 			})
# 			Ingredient.create!({
# 				name: "Siembra Azul Blanco Tequila", ingredient_type_id: it10201.id
# 				})
# 			Ingredient.create!({
# 				name: "Siete Leguas Blanco Tequila", ingredient_type_id: it10201.id
# 				})
# 			Ingredient.create!({
# 				name: "El Tesoro Platinum Tequila", ingredient_type_id: it10201.id
# 				})
# 		it10202=IngredientType.create!({
# 			name: 'Reposado Tequila', ingredient_family_id: if102.id
# 			})	
# 			Ingredient.create!({
# 				name: "El Tesoro Reposado Tequila", ingredient_type_id: it10202.id
# 				})
# 			Ingredient.create!({
# 				name: "Siete Leguas Reposado Tequila", ingredient_type_id: it10202.id
# 				})
# 		it10203=IngredientType.create!({
# 			name: 'Reposado Tequila', ingredient_family_id: if102.id
# 			})		
# 			Ingredient.create!({
# 				name: "El Tesoro Anejo Tequila", ingredient_type_id: it10203.id
# 				})

# 	if103=IngredientFamily.create!({ #change this level to tequila and mezcal
# 		name: 'Mezcal', ingredient_category_id: ic1.id
# 		})
# 		it10301=IngredientType.create!({
# 			name: 'Blanco or Joven Mezcal', ingredient_family_id: if103.id
# 			})
# 			Ingredient.create!({
# 				name: "Del Maguey Chichicapa Mezcal", ingredient_type_id: it10301.id
# 				})
# 			Ingredient.create!({
# 				name: "Del Maguey Crema de Mezcal", ingredient_type_id: it10301.id
# 				})
# 			Ingredient.create!({
# 				name: "Del Maguey Vida Mezcal", ingredient_type_id: it10301.id
# 				})
# 			Ingredient.create!({
# 				name: "Los Amantes Joven Mezcal", ingredient_type_id: it10301.id
# 				})
# 		it10302=IngredientType.create!({
# 			name: 'Reposado or madurado Mezcal', ingredient_family_id: if103.id
# 			})		
# 		it10303=IngredientType.create!({
# 			name: 'Anejo or anejado Mezcal', ingredient_family_id: if103.id
# 			})
# 	if104=IngredientFamily.create!({
# 		name: 'Rum', ingredient_category_id: ic1.id
# 		})
# 		it10401=IngredientType.create!({
# 			name: 'Spanish-Style Rum', ingredient_family_id: if104.id
# 			})
# 			Ingredient.create!({
# 				name: 'Cana Brava (Panama)', ingredient_type_id: it10401.id
# 				})
# 			Ingredient.create!({
# 				name: "Flor de Cana Extra-Dry White Rum (Nicaragua)", ingredient_type_id: it10401.id
# 				})
# 			Ingredient.create!({
# 				name: 'Ron del Barrilito 3-Star Rum (Puerto Rico)', ingredient_type_id: it10401.id
# 				})
# 			Ingredient.create!({
# 				name: 'Santa Teresa 1796 Ron Antiguo do Solera Rum (Venezuela)', ingredient_type_id: it10401.id
# 				})
# 		it10402=IngredientType.create!({
# 			name: 'English-Style Rum', ingredient_family_id: if104.id
# 			})
# 			Ingredient.create!({
# 				name: 'El Dorado 12-Year Rum (Guyana)', ingredient_type_id: it10402.id
# 				})
# 			Ingredient.create!({
# 				name: "Gosling's Black Seal Rum (Bermuda)", ingredient_type_id: it10402.id
# 				})
# 			Ingredient.create!({
# 				name: "Lemon Hart 151 Rum (Guyana)", ingredient_type_id: it10402.id
# 				})
# 			Ingredient.create!({
# 				name: "Scarlet Ibis Rum (Trinidad)", ingredient_type_id: it10402.id
# 				})
# 		it10403=IngredientType.create!({
# 			name: 'Jamaican-Style Rum', ingredient_family_id: if104.id
# 			})
# 			Ingredient.create!({
# 				name: "Appleton Estate V/X Rum (Jamaica)", ingredient_type_id: it10403.id
# 				})
# 			Ingredient.create!({
# 				name: "Smith and Cross Rum (Jamaica)", ingredient_type_id: it10403.id
# 				})
# 		it10404=IngredientType.create!({
# 			name: 'Rhum Agricole', ingredient_family_id: if104.id
# 			})
# 			Ingredient.create!({
# 				name: "Barbancourt White Rhum (Haiti)", ingredient_type_id: it10404.id
# 				})
# 			Ingredient.create!({
# 				name: "La Favorite Rhum Agricole Ambre (Martinique)", ingredient_type_id: it10404.id
# 				})
# 			Ingredient.create!({
# 				name: "La Favorite Rhum Agricole Blanc (Martinique)", ingredient_type_id: it10404.id
# 				})
# 	if105=IngredientFamily.create!({
# 		name: 'Gin', ingredient_category_id: ic1.id
# 		})
# 		it10501=IngredientType.create!({
# 			name: 'London dry', ingredient_family_id: if105.id
# 			})
# 			Ingredient.create!({
# 				name: 'Beefeater London Dry Gin', ingredient_type_id: it10501.id
# 				})
# 			Ingredient.create!({
# 				name: 'Tanqueray London Dry Gin', ingredient_type_id: it10501.id
# 				})
# 		it10502=IngredientType.create!({
# 			name: 'Plymouth', ingredient_family_id: if105.id
# 			})
# 			Ingredient.create!({
# 				name: 'Plymouth Gin', ingredient_type_id: it10502.id
# 				})
# 		it10503=IngredientType.create!({
# 			name: 'Old Tom', ingredient_family_id: if105.id
# 			})
# 			Ingredient.create!({
# 				name: "Hayman's Old Tom Gin", ingredient_type_id: it10503.id
# 				})
# 			Ingredient.create!({
# 				name: "Ransom Old Tom Gin", ingredient_type_id: it10503.id
# 				})
# 		it10504=IngredientType.create!({
# 			name: 'Genever', ingredient_family_id: if105.id
# 			})
# 			Ingredient.create!({
# 				name: "Bols Genever", ingredient_type_id: it10504.id
# 				})
# 		it10505=IngredientType.create!({
# 			name: 'New style', ingredient_family_id: if105.id
# 			})
# 			Ingredient.create!({
# 				name: "Anchor Distilling Company Junipero Gin", ingredient_type_id: it10505.id
# 				})
# 			Ingredient.create!({
# 				name: "Perry's Tot Navy-Strength Gin", ingredient_type_id: it10505.id
# 				})


# 	if106=IngredientFamily.create!({
# 		name: 'Brandy', ingredient_category_id: ic1.id
# 		})
# 		it10601=IngredientType.create!({
# 				name: 'Armagnac', ingredient_family_id: if106.id
# 				})
# 		it10602=IngredientType.create!({
# 				name: 'Cognac', ingredient_family_id: if106.id
# 				})
# 			Ingredient.create!({
# 				name: "Hine H VSOP Cognac", ingredient_type_id: it10602.id
# 				})
# 			Ingredient.create!({
# 				name: "Pierre Ferrand 1840 Cognac", ingredient_type_id: it10602.id
# 				})
# 			Ingredient.create!({
# 				name: "Pierre Ferrand Ambre Cognac", ingredient_type_id: it10602.id
# 				})
# 		it10603=IngredientType.create!({
# 				name: 'Grappa', ingredient_family_id: if106.id
# 				})
# 		it10604=IngredientType.create!({
# 				name: 'Marc', ingredient_family_id: if106.id
# 				})
# 		it10605=IngredientType.create!({
# 				name: 'Pisco', ingredient_family_id: if106.id
# 				})
# 			Ingredient.create!({
# 				name: "Campo de Encanto Acholado Pisco", ingredient_type_id: it10605.id
# 				})
# 		it10606=IngredientType.create!({
# 				name: 'Apple Brandy', ingredient_family_id: if106.id
# 				})
# 			Ingredient.create!({
# 				name: "Laird's Bottled-inBond Straight Apple Brandy", ingredient_type_id: it10606.id
# 				})
# 			Ingredient.create!({
# 				name: "Busnel Calvados Pays d-Auge VSOP", ingredient_type_id: it10606.id
# 				})
# 		it10607=IngredientType.create!({
# 				name: 'Eau-de-vie or Fruit Brandy', ingredient_family_id: if106.id
# 				})
# 			Ingredient.create!({
# 				name: "Clear Creek Pear Brandy", ingredient_type_id: it10607.id
# 				})
# 			Ingredient.create!({
# 				name: "G.E. Massenez Kirsch Vieux Cherry Brandy", ingredient_type_id: it10607.id
# 				})
# 			Ingredient.create!({
# 				name: "G.E. Massenez Creme de Peche Peach Liqueur", ingredient_type_id: it10607.id
# 				})
# 	if107=IngredientFamily.create!({
# 		name: 'Miscellaneous Spirits', ingredient_category_id: ic1.id
# 		})
# 		it10701=IngredientType.create!({
# 			name: 'Aquavit', ingredient_family_id: if107.id
# 			})
# 			Ingredient.create!({
# 				name: "Linie Aquavit", ingredient_type_id: it10701.id
# 				})
# 			Ingredient.create!({
# 				name: "Krogstad Aquavit", ingredient_type_id: it10701.id
# 				})
# 		it10702=IngredientType.create!({
# 			name: 'Absinthe', ingredient_family_id: if107.id
# 			})
# 			Ingredient.create!({
# 				name: "Emile Pernot Vieux Pontarlier Absinthe", ingredient_type_id: it10702.id
# 				})
# 		it10703=IngredientType.create!({
# 			name: 'Van Oosten Batavia Arrack', ingredient_family_id: if107.id
# 			})	
# 			Ingredient.create!({
# 				name: "Van Oosten Batavia Arrack", ingredient_type_id: it10703.id
# 				})
# 		it10703=IngredientType.create!({
# 			name: 'Chile Liquor', ingredient_family_id: if107.id
# 			})	
# 			Ingredient.create!({
# 				name: "Ancho Reyes", ingredient_type_id: it10702.id
# 				})

# ic2=IngredientCategory.create!({ 
# 	name: 'Liqueur'
# 	})
# 	if201=IngredientFamily.create!({
# 		name: 'Herbaceous', ingredient_category_id: ic2.id
# 		})
# 		it20101=IngredientType.create!({
# 			name: 'Brandy-based', ingredient_family_id: if201.id
# 			})
# 			Ingredient.create!({
# 				name: "Benedictine", ingredient_type_id: it20101.id
# 				})
# 		it20102=IngredientType.create!({
# 			name: 'Chartreuse', ingredient_family_id: if201.id
# 			})
# 			Ingredient.create!({
# 				name: "Green Chartreuse", ingredient_type_id: it20102.id
# 				})
# 		it20103=IngredientType.create!({
# 			name: "Galliano l'Autentico", ingredient_family_id: if201.id
# 			})
# 			Ingredient.create!({
# 				name: "Galliano l'Autentico", ingredient_type_id: it20103.id
# 				})

# 		it20104=IngredientType.create!({
# 			name: "Suze", ingredient_family_id: if201.id
# 			})
# 			Ingredient.create!({
# 				name: "Suze Saveur d'Autrefois Liqueur", ingredient_type_id: it20104.id
# 				})
# 		it20105=IngredientType.create!({
# 			name: 'Spice Liqueur', ingredient_family_id: if201.id
# 			})
# 			Ingredient.create!({
# 				name: "Strega", ingredient_type_id: it20105.id
# 				})
# 			Ingredient.create!({
# 				name: "St Elizabeth Allspice Dram", ingredient_type_id: it20105.id
# 				})
# 			Ingredient.create!({
# 				name: "John D. Taylor Velvet Falernum", ingredient_type_id: it20105.id
# 				})
# 		it20106=IngredientType.create!({
# 			name: 'Amaro', ingredient_family_id: if201.id
# 			})
# 			Ingredient.create!({
# 				name: "Amaro Averna", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Amaro CioCiaro", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Amaro Meletti", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Amaro Nardini", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Amaro Nonino Quintessentia", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Aperol", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Campari", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Cynar", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Fernet-Branca", ingredient_type_id: it20106.id
# 				})
# 			Ingredient.create!({
# 				name: "Ramazzotti", ingredient_type_id: it20106.id
# 				})

# 	if202=IngredientFamily.create!({
# 		name: 'Sweet', ingredient_category_id: ic2.id
# 		})
# 		it20201=IngredientType.create!({
# 			name: 'Chartreuse', ingredient_family_id: if202.id
# 			})
# 			Ingredient.create!({
# 				name: "Yellow Chartreuse", ingredient_type_id: it20201.id
# 				})
# 		it20202=IngredientType.create!({
# 			name: 'Triple sec', ingredient_family_id: if202.id
# 			})
# 			Ingredient.create!({
# 				name: "Cointreau", ingredient_type_id: it20202.id
# 				})
# 			Ingredient.create!({
# 				name: "Grand Marnier", ingredient_type_id: it20202.id
# 				})
# 			Ingredient.create!({
# 				name: "Pierre Ferrand Dry Curacao", ingredient_type_id: it20202.id
# 				})
# 		it20203=IngredientType.create!({
# 			name: 'Coconut Liqueur', ingredient_family_id: if202.id
# 			})
# 			Ingredient.create!({
# 				name: "Kalani Ron de Coco Coconut Liqueur", ingredient_type_id: it20203.id
# 				})
# 		it20204=IngredientType.create!({
# 			name: 'Chocolate Liqueur', ingredient_family_id: if202.id
# 			})
# 			Ingredient.create!({
# 				name: "Marie Brizard White Creme de Cacao", ingredient_type_id: it20204.id
# 				})
# 		it20205=IngredientType.create!({
# 			name: 'Cherry Liqueur', ingredient_family_id: if202.id
# 			})
# 			Ingredient.create!({
# 				name: "Luxardo Maraschino Liqueur", ingredient_type_id: it20205.id
# 				})
# 			Ingredient.create!({
# 				name: "Cherry Heering", ingredient_type_id: it20205.id
# 				})
# 		it20206=IngredientType.create!({
# 			name: 'Apricot Liqueur', ingredient_family_id: if202.id
# 			})
# 			Ingredient.create!({
# 				name: "Rothman and Winter Orchard Apricot Liqueur", ingredient_type_id: it20206.id
# 				})
# 		it20207=IngredientType.create!({
# 			name: 'Elderflower Liqueur', ingredient_family_id: if202.id
# 			})	
# 			Ingredient.create!({
# 				name: "St Germain", ingredient_type_id: it20207.id
# 				})
# 		it20208=IngredientType.create!({
# 			name: 'Caramel Liqueur', ingredient_family_id: if202.id
# 			})	
# 			Ingredient.create!({
# 				name: "Crema de Membrillo Orendain", ingredient_type_id: it20208.id
# 				})
# 		it20209=IngredientType.create!({
# 			name: 'Raspberry Liqueur', ingredient_family_id: if202.id
# 			})	
# 			Ingredient.create!({
# 				name: "Chambord", ingredient_type_id: it20209.id
# 				})

# ic3=IngredientCategory.create!({
# 	name: 'Fortified Wine'
# 	})
# 	if301=IngredientFamily.create!({
# 		name: 'Vermouth', ingredient_category_id: ic3.id
# 		})
# 		it30101=IngredientType.create!({
# 			name: 'Sweet Vermouth', ingredient_family_id: if301.id
# 			})
# 			Ingredient.create!({
# 				name: "Carpano Antica Formula Vermouth", ingredient_type_id: it30101.id
# 				})
# 			Ingredient.create!({
# 				name: "Cocchi Vermouth di Torino", ingredient_type_id: it30101.id
# 				})
# 			Ingredient.create!({
# 				name: "Dolin Blanc Vermouth", ingredient_type_id: it30101.id
# 				})
# 			Ingredient.create!({
# 				name: "Dolin Rouge Vermouth", ingredient_type_id: it30101.id
# 				})
# 			Ingredient.create!({
# 				name: "Punt e Mes", ingredient_type_id: it30101.id
# 				})
# 		it30102=IngredientType.create!({
# 			name: 'Dry Vermouth', ingredient_family_id: if301.id
# 			})
# 			Ingredient.create!({
# 				name: "Dolin Dry Vermouth", ingredient_type_id: it30102.id
# 				})	
# 	if302=IngredientFamily.create!({
# 		name: 'Sherry', ingredient_category_id: ic3.id
# 		})
# 		it30201=IngredientType.create!({
# 			name: 'Dry Sherry', ingredient_family_id: if302.id
# 			})
# 			Ingredient.create!({
# 				name: "Alvear Festival Pale Cream Montilla-Moriles", ingredient_type_id: it30201.id
# 				})	
# 			Ingredient.create!({
# 				name: "La Gitana Manzanilla Sherry", ingredient_type_id: it30201.id
# 				})
# 			Ingredient.create!({
# 				name: "Lustau Los Arcos Amontillado Sherry", ingredient_type_id: it30201.id
# 				})
# 			Ingredient.create!({
# 				name: "Williams and Humbert Dry Sack Medium Sherry", ingredient_type_id: it30201.id
# 				})
# 		it30202=IngredientType.create!({
# 			name: 'Sweet Sherry', ingredient_family_id: if302.id
# 			})
# 			Ingredient.create!({
# 				name: "Lustau East India Solera Sherry", ingredient_type_id: it30202.id
# 				})
# 	if303=IngredientFamily.create!({
# 		name: 'Port', ingredient_category_id: ic3.id
# 		})
# 		it30301=IngredientType.create!({
# 			name: 'Sweet Port', ingredient_family_id: if303.id
# 			})
# 			Ingredient.create!({
# 				name: "Graham's 'Six Grapes' Reserve Ruby Port", ingredient_type_id: it30301.id
# 				})
# 		it30302=IngredientType.create!({
# 			name: 'Dry Port', ingredient_family_id: if303.id
# 			})
# 			Ingredient.create!({
# 				name: "Warre's Otima Ten-Year Tawny Port", ingredient_type_id: it30302.id
# 				})
# 	if304=IngredientFamily.create!({
# 		name: 'Aperitif Wines', ingredient_category_id: ic3.id
# 		})
# 		it30401=IngredientType.create!({
# 			name: 'Dry Aperitif Wine', ingredient_family_id: if304.id
# 			})
# 			Ingredient.create!({
# 				name: "Bonal Gentiane-Quina", ingredient_type_id: it30401.id
# 				})
# 			Ingredient.create!({
# 				name: "Cocchi Americano", ingredient_type_id: it30401.id
# 				})
# 			Ingredient.create!({
# 				name: "Lillet Rouge", ingredient_type_id: it30401.id
# 				})
# 		it30402=IngredientType.create!({
# 			name: 'Dry Aperitif Wine', ingredient_family_id: if304.id
# 			})
# 			Ingredient.create!({
# 				name: "Lillet Blanc", ingredient_type_id: it30402.id
# 				})
# 			Ingredient.create!({
# 				name: "Lillet Rose", ingredient_type_id: it30402.id
# 				})

# # ic3=IngredientCategory.create!({ #put this under modifier/edible?
# # 	name: 'Sweetener' #(juice, syrup)
# # 	})
# ic4=IngredientCategory.create!({
# 	name: 'Produce'
# 	})
# 	#mineral - (salt(kosher, sea), seeds(cumin))
# 	#dairy
# 	#aromatics (floral (rose water) - herbaceous(ipa_syrup, mint))
# 	#sweetener - (candy(chocolate), syrup(maple, simple, hibiscus), agave, honey)
# 	#fruit - (citrus, berries, vegetal (cucumber, celery))
# 	#bitters - (binding vs lifting)
# # ic5=IngredientCategory.create!({ #combine with modifier?
# # 	name: 'Edible'
# # 	})

# 	if401=IngredientFamily.create!({
# 		name: 'Bitters', ingredient_category_id: ic4.id
# 		})
# 		it40101=IngredientType.create!({
# 			name: 'Binding Bitters', ingredient_family_id: if401.id
# 			})
# 			Ingredient.create!({
# 				name: "Angostura bitters", ingredient_type_id: it40101.id
# 				})
# 			Ingredient.create!({
# 				name: "Bittermens Xocolatl bitters", ingredient_type_id: it40101.id
# 				})
# 			Ingredient.create!({
# 				name: "Bitter Truth aromatic bitters", ingredient_type_id: it40101.id
# 				})
# 			Ingredient.create!({
# 				name: "Bitter Truth Jerry Thomas' bitters", ingredient_type_id: it40101.id
# 				})
# 			Ingredient.create!({
# 				name: "Fee Brothers whiskey barrel-aged bitters", ingredient_type_id: it40101.id
# 				})
# 			Ingredient.create!({
# 				name: "Bittermens Xocolatl bitters", ingredient_type_id: it40101.id
# 				})

# 		it40102=IngredientType.create!({
# 			name: 'Lifting Bitters', ingredient_family_id: if401.id
# 			})
# 			Ingredient.create!({
# 				name: "Fee Brothers West Indian Orange bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Reagan's Orange bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Angostura Orange bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Fee Brothers West Indian Orange bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Peychauds bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Bitter Truth creole bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Bittercube cherry bark and vanilla bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Bitter Truth celery bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Bitterman's Elemakule Tiki bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Bittermans hopped grapefruit bitters", ingredient_type_id: it40102.id
# 				})
# 			Ingredient.create!({
# 				name: "Bitter Hellfire habanero shrub", ingredient_type_id: it40102.id
# 				})

# 	if402=IngredientFamily.create!({
# 		name: 'Fruit', ingredient_category_id: ic4.id
# 		})
# 		it40201=IngredientType.create!({
# 			name: 'Citrus', ingredient_family_id: if402.id
# 			})
# 			Ingredient.create!({
# 				name: "Orange", ingredient_type_id: it40201.id
# 				})
# 			Ingredient.create!({
# 				name: "Blood Orange", ingredient_type_id: it40201.id
# 				})
# 			Ingredient.create!({
# 				name: "Grapefruit", ingredient_type_id: it40201.id
# 				})
# 			Ingredient.create!({
# 				name: "Tangerine", ingredient_type_id: it40201.id
# 				})
# 			Ingredient.create!({
# 				name: "Lemon", ingredient_type_id: it40201.id
# 				})
# 			Ingredient.create!({
# 				name: "Lime", ingredient_type_id: it40201.id
# 				})
# 			Ingredient.create!({
# 				name: "Kaffir lime", ingredient_type_id: it40201.id
# 				})
# 			Ingredient.create!({
# 				name: "Kaffir lime leaves", ingredient_type_id: it40201.id
# 				})

# 		it40202=IngredientType.create!({
# 			name: 'Berries', ingredient_family_id: if402.id
# 			})
# 			Ingredient.create!({
# 				name: "Blackberries", ingredient_type_id: it40202.id
# 				})
# 			Ingredient.create!({
# 				name: "Cherry", ingredient_type_id: it40202.id
# 				})
# 			Ingredient.create!({
# 				name: "Raspberries", ingredient_type_id: it40202.id
# 				})
# 			Ingredient.create!({
# 				name: "Grapes", ingredient_type_id: it40202.id
# 				})
# 			Ingredient.create!({
# 				name: "Strawberries", ingredient_type_id: it40202.id
# 				})

# 		it40203=IngredientType.create!({
# 			name: 'Tree Fruit', ingredient_family_id: if402.id
# 			})		
# 			Ingredient.create!({
# 				name: "Apple", ingredient_type_id: it40203.id
# 				})
# 			Ingredient.create!({
# 				name: "Pomegranate", ingredient_type_id: it40203.id
# 				})
# 			Ingredient.create!({
# 				name: "Nectarines", ingredient_type_id: it40203.id
# 				})
# 			Ingredient.create!({
# 				name: "Pears", ingredient_type_id: it40203.id
# 				})
# 			Ingredient.create!({
# 				name: "Peaches", ingredient_type_id: it40203.id
# 				})

# 		it40204=IngredientType.create!({
# 			name: 'Tropical', ingredient_family_id: if402.id
# 			})
# 			Ingredient.create!({
# 				name: "Mango", ingredient_type_id: it40204.id
# 				})
# 			Ingredient.create!({
# 				name: "Pineapple", ingredient_type_id: it40204.id
# 				})
# 			Ingredient.create!({
# 				name: "Coconut", ingredient_type_id: it40204.id
# 				})


# 		it40206=IngredientType.create!({
# 			name: 'Vegetal', ingredient_family_id: if402.id
# 			})
# 			Ingredient.create!({
# 				name: "Cucumber", ingredient_type_id: it40206.id
# 				})
# 			Ingredient.create!({
# 				name: "Celery", ingredient_type_id: it40206.id
# 				})
# 			Ingredient.create!({
# 				name: "Cherry Tomatoes", ingredient_type_id: it40206.id
# 				})
# 			Ingredient.create!({
# 				name: "Carrot", ingredient_type_id: it40206.id
# 				})
# 			Ingredient.create!({
# 				name: "Red bell pepper", ingredient_type_id: it40206.id
# 				})
# 			Ingredient.create!({
# 				name: "Yellow bell pepper", ingredient_type_id: it40206.id
# 				})

# 		it40207=IngredientType.create!({
# 			name: 'Melon', ingredient_family_id: if402.id
# 			})
# 			Ingredient.create!({
# 				name: "Cantaloupe", ingredient_type_id: it40207.id
# 				})
# 			Ingredient.create!({
# 				name: "Watermelon", ingredient_type_id: it40207.id
# 				})

# 	if403=IngredientFamily.create!({
# 		name: 'Aromatics', ingredient_category_id: ic4.id
# 		})
# 		it40301=IngredientType.create!({ 
# 			name: 'Herbs', ingredient_family_id: if403.id
# 			})
# 			Ingredient.create!({
# 				name: "Basil", ingredient_type_id: it40301.id
# 				})
# 			Ingredient.create!({
# 				name: "Mint", ingredient_type_id: it40301.id
# 				})
# 			Ingredient.create!({
# 				name: "Sage", ingredient_type_id: it40301.id
# 				})
# 		it40302=IngredientType.create!({ 
# 			name: 'Floral', ingredient_family_id: if403.id
# 			})
# 			Ingredient.create!({
# 				name: "Rose Water", ingredient_type_id: it40302.id
# 				})
# 		it40303=IngredientType.create!({ 
# 			name: 'Spices', ingredient_family_id: if403.id
# 			})
# 			Ingredient.create!({
# 				name: "Cumin", ingredient_type_id: it40303.id
# 				})
# 			Ingredient.create!({
# 				name: "Chili powder", ingredient_type_id: it40303.id
# 				})
# 			Ingredient.create!({
# 				name: "Cinnamon", ingredient_type_id: it40303.id
# 				})
# 			Ingredient.create!({
# 				name: "Nutmeg", ingredient_type_id: it40303.id
# 				})
# 		it40304=IngredientType.create!({ 
# 			name: 'Syrups', ingredient_family_id: if403.id
# 			})
# 			Ingredient.create!({
# 				name: "IPA Syrup", ingredient_type_id: it40304.id
# 				})


# 	if404=IngredientFamily.create!({
# 		name: 'Minerals', ingredient_category_id: ic4.id
# 		})
# 		it40401=IngredientType.create!({ 
# 			name: 'Salt', ingredient_family_id: if404.id
# 			})
# 			Ingredient.create!({
# 				name: "Sea salt", ingredient_type_id: it40401.id
# 				})
# 		it40402=IngredientType.create!({ 
# 			name: 'Acid', ingredient_family_id: if404.id
# 			})
# 			Ingredient.create!({
# 				name: "Acid Phosphate", ingredient_type_id: it40401.id
# 				})

# 	if405=IngredientFamily.create!({
# 		name: 'Dairy', ingredient_category_id: ic4.id
# 		})
# 		it40501=IngredientType.create!({ 
# 			name: 'Milk', ingredient_family_id: if405.id
# 			})
# 			Ingredient.create!({
# 				name: "Toasted Almond Milk", ingredient_type_id: it40501.id
# 				})
# 			Ingredient.create!({
# 				name: "House Horchata", ingredient_type_id: it40501.id
# 				})
# 		it40502=IngredientType.create!({ 
# 			name: 'Butter', ingredient_family_id: if405.id
# 			})
# 			Ingredient.create!({
# 				name: "Salted Butter", ingredient_type_id: it40502.id
# 				})
# 			Ingredient.create!({
# 				name: "Unsalted Butter", ingredient_type_id: it40502.id
# 				})
# 		it40503=IngredientType.create!({ 
# 			name: 'Cream', ingredient_family_id: if405.id
# 			})
# 			Ingredient.create!({
# 				name: "Half and half", ingredient_type_id: it40503.id
# 				})
# 			Ingredient.create!({
# 				name: "Cream", ingredient_type_id: it40503.id
# 				})
# 		it40504=IngredientType.create!({ 
# 			name: 'Egg', ingredient_family_id: if405.id
# 			})
# 			Ingredient.create!({
# 				name: "Egg White", ingredient_type_id: it40504.id
# 				})
# 			Ingredient.create!({
# 				name: "Whole Egg", ingredient_type_id: it40504.id
# 				})
# 			Ingredient.create!({
# 				name: "Egg Yolk", ingredient_type_id: it40504.id
# 				})

# 	if406=IngredientFamily.create!({
# 		name: 'Sweetener', ingredient_category_id: ic4.id
# 		})
# 		it40601=IngredientType.create!({ 
# 			name: 'Candy', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Dark Chocolate", ingredient_type_id: it40601.id
# 				})
# 			Ingredient.create!({
# 				name: "Milk Chocolate", ingredient_type_id: it40601.id
# 				})

# 		it40602=IngredientType.create!({ 
# 			name: 'Syrup', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Maple Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Agave Nectar", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Honey", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Simple Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Acacia Honey", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Banana Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Blueberry Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Braeburn Apple Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Cane Sugar Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Cinnamon Bark Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Cumin Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Curried Ginger Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Demerara Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Ginger Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Hibiscus Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Orgeat", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Passion Fruit Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Scarlet Glow Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Simple Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Vanilla Syrup", ingredient_type_id: it40602.id
# 				})
# 			Ingredient.create!({
# 				name: "Grenadine", ingredient_type_id: it40602.id
# 				})


# 		it40603=IngredientType.create!({ 
# 			name: 'Molasses', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Pomegranate Molasses", ingredient_type_id: it40603.id
# 				})

# 		it40604=IngredientType.create!({ 
# 			name: 'Juice', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Coco Lopez", ingredient_type_id: it40604.id
# 				})
# 			Ingredient.create!({
# 				name: "Verjus", ingredient_type_id: it40604.id
# 				})
# 		it40605=IngredientType.create!({ 
# 			name: 'Sugar', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Cane Sugar", ingredient_type_id: it40605.id
# 				})
# 			Ingredient.create!({
# 				name: "Pure Fine Sugar", ingredient_type_id: it40605.id
# 				})

# 		it40606=IngredientType.create!({ 
# 			name: 'Cordial', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Kumquat Cordial", ingredient_type_id: it40606.id
# 				})
# 			Ingredient.create!({
# 				name: "Kumquat Cordial", ingredient_type_id: it40606.id
# 				})
# 			Ingredient.create!({
# 				name: "Toby's Lime Cordial", ingredient_type_id: it40606.id
# 				})

# 		it40607=IngredientType.create!({ 
# 			name: 'Puree', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Pumpkin Puree", ingredient_type_id: it40607.id
# 				})
# 			Ingredient.create!({
# 				name: "Red Bell Pepper Puree", ingredient_type_id: it40607.id
# 				})

# 		it40608=IngredientType.create!({ 
# 			name: 'Gastrique', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Strawberry-Balsamic Gastrique", ingredient_type_id: it40608.id
# 				})
# 			Ingredient.create!({
# 				name: "Tarragon and Agave Nectar Gastrique", ingredient_type_id: it40608.id
# 				})

# 		it40609=IngredientType.create!({ 
# 			name: 'Shrub', ingredient_family_id: if406.id
# 			})
# 			Ingredient.create!({
# 				name: "Toby's sour cherry shrub", ingredient_type_id: it40609.id
# 				})

# ic5=IngredientCategory.create!({
# 	name: 'Miscellaneous' #red - white  - rose - campaign // verietal - or brut/dry // bottle
# 	})
# 	if501=IngredientFamily.create!({
# 		name: 'Batches', ingredient_category_id: ic5.id
# 		})
# 		it50101=IngredientType.create!({ 
# 			name: 'Sweet and Spice Batches', ingredient_family_id: if501.id
# 			})
# 			Ingredient.create!({
# 				name: "Donn's mix #1", ingredient_type_id: it50101.id
# 				})
# 			Ingredient.create!({
# 				name: "Donn's spices #2", ingredient_type_id: it50101.id
# 				})
# 			Ingredient.create!({
# 				name: "Pendennis mix", ingredient_type_id: it50101.id
# 				})


# 		it50102=IngredientType.create!({ 
# 			name: 'Bitters Batches', ingredient_family_id: if501.id
# 			})
# 			Ingredient.create!({
# 				name: "House Orange Bitters", ingredient_type_id: it50102.id
# 				})
# 			Ingredient.create!({
# 				name: "House Peychaud's Bitters", ingredient_type_id: it50102.id
# 				})

# 		it50103=IngredientType.create!({ 
# 			name: 'Boozy Batches', ingredient_family_id: if501.id
# 			})
# 			Ingredient.create!({
# 				name: "Bergerac mix", ingredient_type_id: it50103.id
# 				})
# 			Ingredient.create!({
# 				name: "House Sweet Vermouth", ingredient_type_id: it50103.id
# 				})
# 			Ingredient.create!({
# 				name: "Bergerac mix", ingredient_type_id: it50103.id
# 				})
# 			Ingredient.create!({
# 				name: "Zombie mix", ingredient_type_id: it50103.id
# 				})


# 	if502=IngredientFamily.create!({
# 		name: 'Unknown', ingredient_category_id: ic5.id
# 		})
# 		it50201=IngredientType.create!({ 
# 			name: 'Unknown', ingredient_family_id: if502.id
# 			})


# ic7=IngredientCategory.create!({
# 	name: 'Wine' #red - white  - rose - campaign // verietal - or brut/dry // bottle
# 	})
# 	if701=IngredientFamily.create!({
# 		name: 'Red Wine', ingredient_category_id: ic7.id
# 		})
# 		it70101=IngredientType.create!({ 
# 			name: 'Bergerac', ingredient_family_id: if701.id
# 			})

# ic8=IngredientCategory.create!({
# 	name: 'Beer' #lager/ale // type (pil, bock, kolshe, belgin ale, ipa, etc) // bottle
# 	})
# 	if801=IngredientFamily.create!({
# 		name: 'Ale', ingredient_category_id: ic8.id
# 		})
# 		it70101=IngredientType.create!({ 
# 			name: 'IPA', ingredient_family_id: if801.id
# 			})


# #where would something like ipa or coke syrup fall/ rose water / eggs / rims?

# #would I want orange to be one ingredient, then have modifiers that are 'juice of', 'wheel(s) of', 'syrup of'
# #juice could be a modifier but syrup could not be

# #floral
# #rose water

# #Liquor
# #Miscellaneous Liquors? of just Absinthe
# #Absinthe - type of Absinthe... see wikipedia or just call it absinthe for now
# #Absinthe Ordinaire

# #Liqueur			
# #Herbaceous 													Fruit			
# #Amaro				Chartruse			chocolate	coffee		Triple Sec		
# #Cynar		Fernet	Green Chartruese	schnapps/	baily's		Grand Marnier	

# #fortified wine
# #sherry - fam 					Vermouth  			Port        aperitif
# #amontillado sherry - type 		sweet/dry/rouge		Port (dry)	lillet
# #Lustau							dolin				bottle		blanc lillet


# # if5=IngredientFamily.create!({
# # 	name: 'Dairy', ingredient_category_id: ic4.id
# # 	})
# # if6=IngredientFamily.create!({
# # 	name: 'Minerals', ingredient_category_id: ic4.id
# # 	})
# # if7=IngredientFamily.create!({
# # 	name: 'Amaro', ingredient_category_id: ic2.id
# # 	})
# # if8=IngredientFamily.create!({
# # 	name: 'Aperitif', ingredient_category_id: ic2.id
# # 	})
# # if9=IngredientFamily.create!({
# # 	name: 'Syrup', ingredient_category_id: ic3.id
# # 	})
# # if10=IngredientFamily.create!({
# # 	name: 'Fruit', ingredient_category_id: ic5.id
# # 	})
# # if11=IngredientFamily.create!({
# # 	name: 'Fruit Juice', ingredient_category_id: ic3.id
# # 	})
# # if12=IngredientFamily.create!({ #remove
# # 	name: 'Fortified Wine', ingredient_category_id: ic2.id
# # 	})
# # if13=IngredientFamily.create!({ #change this to ale
# # 	name: 'Ale', ingredient_category_id: ic8.id
# # 	})

# # if15=IngredientFamily.create!({ #change to herbaceous and fruity
# # 	name: 'Liqueur', ingredient_category_id: ic2.id
# # 	})


# # it1=IngredientType.create!({
# # 	name: 'Scotch', ingredient_family_id: if1.id
# # 	})
# # it2=IngredientType.create!({
# # 	name: 'Bourbon', ingredient_family_id: if1.id
# # 	})
# # it3=IngredientType.create!({
# # 	name: 'Rye', ingredient_family_id: if1.id
# # 	})
# # it4=IngredientType.create!({
# # 	name: 'Mezcal', ingredient_family_id: if2.id
# # 	})
# # it5=IngredientType.create!({
# # 	name: 'Joven Tequila', ingredient_family_id: if2.id
# # 	})
# # it51=IngredientType.create!({
# # 	name: 'Repasado Tequila', ingredient_family_id: if2.id
# # 	})
# # it52=IngredientType.create!({
# # 	name: 'Blanco Tequila', ingredient_family_id: if2.id
# # 	})
# # it6=IngredientType.create!({
# # 	name: 'London Dry Gin', ingredient_family_id: if4.id
# # 	})
# # it61=IngredientType.create!({
# # 	name: 'Sloe Gin', ingredient_family_id: if4.id
# # 	})
# # it7=IngredientType.create!({
# # 	name: 'Egg', ingredient_family_id: if5.id
# # 	})
# # it8=IngredientType.create!({
# # 	name: 'Salt', ingredient_family_id: if6.id
# # 	})
# # it9=IngredientType.create!({
# # 	name: 'Simple Syrup', ingredient_family_id: if9.id
# # 	})
# # it10=IngredientType.create!({
# # 	name: 'Lime', ingredient_family_id: if10.id
# # 	})
# # it11=IngredientType.create!({
# # 	name: 'Port', ingredient_family_id: if12.id
# # 	})
# # it12=IngredientType.create!({
# # 	name: 'Sherry', ingredient_family_id: if12.id
# # 	})
# # it13=IngredientType.create!({
# # 	name: 'Dry Vermouth', ingredient_family_id: if12.id
# # 	})
# # it14=IngredientType.create!({
# # 	name: 'Sweet Vermouth', ingredient_family_id: if12.id
# # 	})
# # it15=IngredientType.create!({
# # 	name: 'Congac', ingredient_family_id: if14.id
# # 	})
# # it16=IngredientType.create!({ #???????????
# # 	name: 'VS', ingredient_family_id: if14.id
# # 	})
# # it17=IngredientType.create!({ #???????????
# # 	name: 'VSOP', ingredient_family_id: if14.id
# # 	})
# # it18=IngredientType.create!({
# # 	name: 'IPA', ingredient_family_id: if13.id
# # 	})
# # it19=IngredientType.create!({ #adjust!
# # 	name: 'Herbaceous Aperitif', ingredient_family_id: if7.id
# # 	})
# # it20=IngredientType.create!({ #adjust!
# # 	name: 'Triple Sec', ingredient_family_id: if15.id
# # 	})
# # it21=IngredientType.create!({ #adjust!
# # 	name: 'Elderflower', ingredient_family_id: if15.id
# # 	})

# # i1=Ingredient.create!({
# # 	name: 'Old Overhoort Rye', brand: 'Old Overhoort', make: 'Rye', type_id: it3.id, description: 'Cheap and decent'
# # 	})
# # i2=Ingredient.create!({
# # 	name: 'Laphroiag 10', brand: 'Laphroiag', make: '10 year', type_id: it1.id, description: 'Nice and peaty'
# # 	})
# # i3=Ingredient.create!({
# # 	name: 'Egg white', brand: 'Cage Free', make: 'Organic', type_id: it7.id, description: 'Frothy'
# # 	})
# # i4=Ingredient.create!({
# # 	name: 'Kosher salt', brand: 'Sea', make: 'Kosher', type_id: it8.id, description: 'Makes for a great rim'
# # 	})
# # i5=Ingredient.create!({
# # 	name: 'Simple Syrup', brand: 'Homemade', make: 'Tap water', type_id: it9.id, description: 'Easy way to add sugar'
# # 	})
# # i6=Ingredient.create!({
# # 	name: 'Lime Wedge', brand: 'Homemade', make: 'Organic', type_id: it10.id, description: 'Easy way to add sugar'
# # 	})
# # i7=Ingredient.create!({
# # 	name: 'Beefeater London Dry', brand: 'Beefeater', make: 'London dry', type_id: it6.id, description: 'A great go-to gin'
# # 	})
# # i8=Ingredient.create!({
# # 	name: 'Cynar', brand: 'Cynar', make: 'Cynar', type_id: it19.id, description: 'Spike of taste on the front'
# # 	})
# # i9=Ingredient.create!({
# # 	name: 'Buffalo Trace', brand: 'Buffalo Trace', make: 'Bourbon', type_id: it2.id, description: 'Yummy'
# # 	})
# # i10=Ingredient.create!({
# # 	name: 'Grand Marnier', brand: 'Grand Marnier', make: 'Grand Marnier', type_id: it20.id, description: 'Triple Sec Brandy Blend'
# # 	})
# # i11=Ingredient.create!({
# # 	name: 'St. Germain', brand: 'That one family', make: 'Elderflower Liqueur', type_id: it21.id, description: 'Ketchup'
# # 	})

# # i12=Ingredient.create!({
# # 	name: 'Sol siembre Tequila', brand: 'sol siembre', make: 'Blanco tequila', type_id: it52.id, description: 'smooth'
# # 	})

# # i13=Ingredient.create!({
# # 	name: 'La Vida Mezcal', brand: 'La Vida', make: 'Mezcal', type_id: it4.id, description: 'smoky'
# # 	})