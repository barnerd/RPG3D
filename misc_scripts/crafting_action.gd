extends Button

@onready var recipe_option: OptionButton = $"../OptionButton"


func _on_pressed() -> void:
	var recipe: RecipeResource = recipe_option.recipes[recipe_option.get_selected_id()]
	
	craft_recipe(GameMaster.player, recipe)


func craft_recipe(_actor: PlayerActor, _recipe: RecipeResource) -> void:
	print("Attempting to make a %s" % _recipe.string_name)
	# check player has input items
	if _actor.has_items_by_type(_recipe.input_items):
		print("---Success!")
		# if yes,
		# remove input items
		for i in _recipe.input_items:
			_actor.remove_item(_actor.get_item_by_type(i))
		
		# add output items
		for i in _recipe.output_items:
			_actor.add_item(i.initialize_prefab())
		
		var exp_gained: float = randf_range(0.9, 1.1) * _recipe.skill_experience
		GameMaster.player.gain_exp(exp_gained, _recipe.associated_skill)

	else:
		print("---Failed...")
