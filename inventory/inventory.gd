class_name Inventory extends Node

var items: Array[GameItem] = []


func add_item(_item: GameItem) -> void:
	items.append(_item)
	print("Game Item %s added." % _item.item_data.string_name)


func remove_item(_item: GameItem) -> void:
	items.erase(_item)


func get_item_by_type(_type: ItemResource) -> GameItem:
	for i in items:
		if i.item_data == _type:
			return i
	
	return null


func has_item(_item: GameItem) -> bool:
	return items.has(_item)


func print() -> String:
	var inv_string: String = ""
	
	if items.size() == 0:
		inv_string += "nothing..."
	else:
		for i in items:
			inv_string += i.item_data.string_name
			inv_string += "\n"
	
	#print(inv_string)
	return inv_string
