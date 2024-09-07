extends Node

var player: PlayerActor

func _init() -> void:
	player = PlayerActor.new()

func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_I:
			player.print_inventory()
		if event.pressed and event.keycode == KEY_E:
			player.print_equipment()
		if event.pressed and event.keycode == KEY_S:
			player.print_skills()
