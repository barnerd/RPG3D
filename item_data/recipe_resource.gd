class_name RecipeResource extends Resource

@export var associated_skill: SkillResource
@export var skill_experience: float

@export var input_items: Array[ItemResource]
@export var output_items: Array[ItemResource]

@export var tool: ItemResource

@export var string_name: String
