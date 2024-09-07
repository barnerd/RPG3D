class_name SkillResource extends Resource

@export var string_name: String


static func exp_to_level(_exp: float) -> int:
	return floori(pow(_exp, 1 / PI))
