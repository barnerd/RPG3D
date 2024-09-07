extends OptionButton

var recipes: Array[RecipeResource] = []

@export var mace_recipes: Array[RecipeResource] = []
@export var dagger_recipes: Array[RecipeResource] = []
@export var short_sword_recipes: Array[RecipeResource] = []
@export var long_sword_recipes: Array[RecipeResource] = []
@export var ring_recipes: Array[RecipeResource] = []
@export var necklace_recipes: Array[RecipeResource] = []
@export var boots_recipes: Array[RecipeResource] = []
@export var shields_recipes: Array[RecipeResource] = []
@export var legs_recipes: Array[RecipeResource] = []
@export var gauntlets_recipes: Array[RecipeResource] = []
@export var helmets_recipes: Array[RecipeResource] = []
@export var body_armor_recipes: Array[RecipeResource] = []


func _ready() -> void:
	add_separator("Maces")
	for i in mace_recipes.size():
		add_item(mace_recipes[i].string_name, recipes.size())
		recipes.append(mace_recipes[i])
	
	add_separator("Daggers")
	for i in dagger_recipes.size():
		add_item(dagger_recipes[i].string_name, recipes.size())
		recipes.append(dagger_recipes[i])
	
	add_separator("Short Swords")
	for i in short_sword_recipes.size():
		add_item(short_sword_recipes[i].string_name, recipes.size())
		recipes.append(short_sword_recipes[i])
	
	add_separator("Long Swords")
	for i in long_sword_recipes.size():
		add_item(long_sword_recipes[i].string_name, recipes.size())
		recipes.append(long_sword_recipes[i])
	
	add_separator("Rings")
	for i in ring_recipes.size():
		add_item(ring_recipes[i].string_name, recipes.size())
		recipes.append(ring_recipes[i])
	
	add_separator("Necklaces")
	for i in necklace_recipes.size():
		add_item(necklace_recipes[i].string_name, recipes.size())
		recipes.append(necklace_recipes[i])
	
	add_separator("Boots")
	for i in boots_recipes.size():
		add_item(boots_recipes[i].string_name, recipes.size())
		recipes.append(boots_recipes[i])
	
	add_separator("Shields")
	for i in shields_recipes.size():
		add_item(shields_recipes[i].string_name, recipes.size())
		recipes.append(shields_recipes[i])
	
	add_separator("Legs")
	for i in legs_recipes.size():
		add_item(legs_recipes[i].string_name, recipes.size())
		recipes.append(legs_recipes[i])
	
	add_separator("Gauntlets")
	for i in gauntlets_recipes.size():
		add_item(gauntlets_recipes[i].string_name, recipes.size())
		recipes.append(gauntlets_recipes[i])
	
	add_separator("Helmets")
	for i in helmets_recipes.size():
		add_item(helmets_recipes[i].string_name, recipes.size())
		recipes.append(helmets_recipes[i])
	
	add_separator("Body Armor")
	for i in body_armor_recipes.size():
		add_item(body_armor_recipes[i].string_name, recipes.size())
		recipes.append(body_armor_recipes[i])
