class_name JewelryResource extends EquipmentResource

var game_jewelry_prefab: PackedScene = preload("res://item_data/equipment/jewelry/game_jewelry.tscn")


func initialize_prefab() -> Node:
	var new_item: GameJewelry = game_jewelry_prefab.instantiate() as GameJewelry
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
