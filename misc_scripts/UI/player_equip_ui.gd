extends Label


func _ready() -> void:
	GameMaster.player.equipment_changed.connect(update_text)
	update_text()


func update_text() -> void:
	text = "\t--EQUIPMENT--\n\n"
	
	text += GameMaster.player.print_equipment()
