extends Button

@export var ore_resource: OreResource
@export var mining_skill: SkillResource


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Mine %s" % ore_resource.string_name


func _on_pressed() -> void:
	var new_ore: GameOre = ore_resource.initialize_prefab()
	
	print("You're mining %s!" % new_ore.item_data.string_name)
	
	var exp_gained: float = randf_range(0.9, 1.1) * ore_resource.skill_experience
	GameMaster.player.gain_exp(exp_gained, mining_skill)
	GameMaster.player.add_item(new_ore)
