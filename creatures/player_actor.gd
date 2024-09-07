class_name PlayerActor extends Node

@export var equipment: Equipment

# TODO: Move PlayerActor to a Scene
# TODO: Move this list to an @export
var slots_list: Array[EquipmentSlot] = [
	preload("res://equipment_slots/feet_slot.tres"),
	preload("res://equipment_slots/finger_slot.tres"),
	preload("res://equipment_slots/hands_slot.tres"),
	preload("res://equipment_slots/head_slot.tres"),
	preload("res://equipment_slots/legs_slots.tres"),
	preload("res://equipment_slots/main_hand_slot.tres"),
	preload("res://equipment_slots/neck_slot.tres"),
	preload("res://equipment_slots/off_hand_slot.tres"),
	preload("res://equipment_slots/torso_slot.tres"),
	preload("res://equipment_slots/waist_slot.tres"),
]

var inv: Inventory

var exp_by_skill: Dictionary = {}

signal experience_gained(event: ExperienceEvent)
signal inventory_changed()
signal equipment_changed()


func _init() -> void:
	inv = Inventory.new()
	equipment = Equipment.new(slots_list)


func add_item(_item: GameItem) -> void:
	inv.add_item(_item)
	
	inventory_changed.emit()


func remove_item(_item: GameItem) -> void:
	inv.remove_item(_item)
	
	inventory_changed.emit()


func remove_items(_items: Array[GameItem]) -> void:
	for i in _items:
		remove_item(i)


func get_item_by_type(_type: ItemResource) -> GameItem:
	return inv.get_item_by_type(_type)


func has_items_by_type(_items: Array[ItemResource]) -> bool:
	for i in _items:
		var game_item: GameItem = inv.get_item_by_type(i)
		if not game_item:
			return false
	
	return true


func equip_item(_item: GameEquipment, _slot: EquipmentSlot = null) -> void:
	if not _item == null:
		remove_item(_item)
		
		var old_item: GameEquipment = equipment.equip_item(_item.get_slot() if _slot == null else _slot, _item)
		
		if not old_item == null:
			add_item(old_item)
		
		equipment_changed.emit()


func unequip_item(_slot: EquipmentSlot) -> void:
	var old_item: GameEquipment = equipment.unequip_item(_slot)
	
	if not old_item == null:
		add_item(old_item)
	
	equipment_changed.emit()


func gain_exp(_exp: float, _skill: SkillResource) -> void:
	var current_level: int = get_skill_level(_skill)
	
	if not exp_by_skill.has(_skill):
		exp_by_skill[_skill] = 0
	
	exp_by_skill[_skill] += _exp
	
	experience_gained.emit(ExperienceEvent.new(self, _skill, _exp))
	
	var new_level: int = get_skill_level(_skill)
	if new_level > current_level:
		print("You've leveled up %s! You're now level %d!" % [_skill.string_name, new_level])


func get_skill_level(_skill: SkillResource) -> int:
	if exp_by_skill.has(_skill):
		return SkillResource.exp_to_level(exp_by_skill[_skill])
	else:
		return 0


func print_inventory() -> String:
	return inv.print()


func print_equipment() -> String:
	return equipment.print()


func print_skills() -> String:
	var skill_string: String = ""
	for s in exp_by_skill.keys():
		skill_string += "%s - level %d, %f exp" % [s.string_name, SkillResource.exp_to_level(exp_by_skill[s]), exp_by_skill[s]]
		skill_string += "\n"
	
	#print(skill_string)
	return skill_string
