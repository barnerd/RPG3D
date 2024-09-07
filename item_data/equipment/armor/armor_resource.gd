class_name ArmorResource extends EquipmentResource

var game_armor_prefab: PackedScene = preload("res://item_data/equipment/armor/game_armor.tscn")


func initialize_prefab() -> Node:
	var new_item: GameArmor = game_armor_prefab.instantiate() as GameArmor
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
