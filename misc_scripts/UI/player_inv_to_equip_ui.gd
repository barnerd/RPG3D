extends OptionButton

var items: Array[GameEquipment] = []


func _ready() -> void:
	GameMaster.player.inventory_changed.connect(update_list)


func update_list() -> void:
	items = []
	clear()
	
	for i in GameMaster.player.inv.items:
		if i is GameEquipment:
			add_item(i.item_data.string_name, items.size())
			items.append(i)
