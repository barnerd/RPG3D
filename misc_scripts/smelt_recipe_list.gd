extends OptionButton

@export var recipes: Array[RecipeResource] = []

func _ready() -> void:
	add_separator("Ingots")
	for i in recipes.size():
		add_item(recipes[i].string_name, i)
