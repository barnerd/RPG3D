class_name FoodResource extends ItemResource

var game_food_prefab: PackedScene = preload("res://item_data/food/game_food.tscn")


func initialize_prefab() -> Node:
	var new_item: GameFood = game_food_prefab.instantiate() as GameFood
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
