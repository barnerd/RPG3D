extends Button

@export var hunt_resource: HuntTargetResource
@export var hunting_skill: SkillResource


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Hunt %s" % hunt_resource.string_name


func _on_pressed() -> void:
	print("You're hunting %s!" % hunt_resource.string_name)
	
	for i in hunt_resource.drops:
		GameMaster.player.add_item(i.initialize_prefab())
	
	var exp_gained: float = randf_range(0.9, 1.1) * hunt_resource.skill_experience
	GameMaster.player.gain_exp(exp_gained, hunting_skill)
