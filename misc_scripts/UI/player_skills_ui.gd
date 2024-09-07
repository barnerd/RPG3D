extends Label


func _ready() -> void:
	GameMaster.player.experience_gained.connect(update_text)
	update_text(null)


func update_text(_event: ExperienceEvent) -> void:
	text = "\t--SKILLS--\n\n"
	
	text += GameMaster.player.print_skills()
