class_name Equipment extends Node

var item_by_slot: Dictionary = {} # EquipmentSlot > GameItem


func _init(_slots: Array[EquipmentSlot]) -> void:
	for s in _slots:
		item_by_slot[s] = null


func equip_item(_slot: EquipmentSlot, _item: GameEquipment) -> GameEquipment:
	var item_to_return: GameEquipment = null
	
	if item_by_slot.has(_slot) and _item.fits_slot(_slot):
		item_to_return = unequip_item(_slot)
		
		item_by_slot[_slot] = _item
		print("Game Item %s equiped in slot %s." % [_item.item_data.string_name, _slot.string_name])
	
	return item_to_return


func unequip_item(_slot: EquipmentSlot) -> GameEquipment:
	var old_item: GameEquipment = null
	
	if item_by_slot.has(_slot):
		old_item = item_by_slot[_slot]
		item_by_slot[_slot] = null
	
	return old_item


func get_item_by_slot(_slot: EquipmentSlot) -> GameEquipment:
	return item_by_slot[_slot]


func print() -> String:
	var equipment_string: String = ""
	
	for i in item_by_slot.keys():
		equipment_string += "slot: %s -- %s" % [i.string_name, item_by_slot[i].item_data.string_name if not item_by_slot[i] == null else "empty"]
		equipment_string += "\n"
	
	#print(equipment_string)
	return equipment_string
