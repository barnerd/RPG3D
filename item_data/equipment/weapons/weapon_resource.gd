class_name WeaponResource extends EquipmentResource

@export var weapon_type: WeaponType

var game_weapon_prefab: PackedScene = preload("res://item_data/equipment/weapons/game_weapon.tscn")


func initialize_prefab() -> Node:
	var new_item: GameWeapon = game_weapon_prefab.instantiate() as GameWeapon
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
