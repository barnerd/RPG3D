extends Button

@onready var equipment_options = $"../OptionButton"



func _on_equip_pressed() -> void:
	var item: GameEquipment = equipment_options.items[equipment_options.get_selected_id()]
	
	GameMaster.player.equip_item(item)


func _on_unequip_pressed() -> void:
	var  item: GameEquipment = equipment_options.items[equipment_options.get_selected_id()]
	
	GameMaster.player.unequip_item(item.get_slot())
