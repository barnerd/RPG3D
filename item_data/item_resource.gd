class_name ItemResource extends Resource

@export var string_name: String

var game_item_prefab: PackedScene = preload("res://item_data/game_item.tscn")


func initialize_prefab() -> Node:
	var new_item: GameItem = game_item_prefab.instantiate() as GameItem
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
