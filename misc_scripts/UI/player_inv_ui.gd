extends Label


func _ready() -> void:
	GameMaster.player.inventory_changed.connect(update_text)
	update_text()


func update_text() -> void:
	text = "\t--INVENTORY--\n\n"
	
	text += GameMaster.player.print_inventory()
