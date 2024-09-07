extends OptionButton

var items: Array[GameEquipment] = []


func _ready() -> void:
	GameMaster.player.equipment_changed.connect(update_list)


func update_list() -> void:
	items = []
	clear()
	
	for i in GameMaster.player.equipment.item_by_slot.values():
		if not i == null:
			add_item(i.item_data.string_name, items.size())
			items.append(i)
