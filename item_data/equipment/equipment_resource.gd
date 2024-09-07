class_name EquipmentResource extends ItemResource

@export var slot: EquipmentSlot

var game_equipment_prefab: PackedScene = preload("res://item_data/equipment/game_equipment.tscn")


func initialize_prefab() -> Node:
	var new_item: GameEquipment = game_equipment_prefab.instantiate() as GameEquipment
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
