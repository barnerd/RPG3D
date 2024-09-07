class_name GameEquipment extends GameItem


func fits_slot(_slot: EquipmentSlot) -> bool:
	return get_slot() == _slot


func get_slot() -> EquipmentSlot:
	return (item_data as EquipmentResource).slot
