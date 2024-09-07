class_name ExperienceEvent extends Node

var actor: PlayerActor
var skill: SkillResource
var experience: float

func _init(_actor: PlayerActor, _skill: SkillResource, _exp: float) -> void:
	actor = _actor
	skill = _skill
	experience = _exp
