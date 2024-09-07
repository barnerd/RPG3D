class_name OreResource extends ItemResource

enum OreType {COPPER, TIN, IRON, NICKEL, SILVER, GOLD, PLATINUM, MITHRIL, ADAMANTITE}

@export var type: OreType

@export var skill_experience: float

var game_ore_prefab: PackedScene = preload("res://item_data/ores/game_ore.tscn")


func initialize_prefab() -> Node:
	var new_item: GameOre = game_ore_prefab.instantiate() as GameOre
	
	# set variables here, if any
	new_item.item_data = self
	
	return new_item
