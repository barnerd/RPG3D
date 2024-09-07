class_name IngotResource extends ItemResource

enum IngotType {COPPER, TIN, IRON, BRONZE, NICKEL, SILVER, GOLD, PLATINUM, MITHRIL, ADAMANTITE}

@export var type: IngotType

var game_ingot_prefab: PackedScene = preload("res://item_data/ingots/game_ingot.tscn")


func initialize_prefab() -> Node:
	var new_item: GameIngot = game_ingot_prefab.instantiate() as GameIngot
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
