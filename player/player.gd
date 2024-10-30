# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Player's save data components.
var day: int = 5

# Empty containers.
var player_data: Dictionary

# Locations.
@onready var root = get_node("../..")


# Retrieve current player data.
func get_player_data() -> Dictionary:
	root.print_handler.print_message_1("query self", "building player data")
	player_data = {
		"active day" : day
	}
	root.print_handler.print_message_1("load up", "sending player data")
	return player_data


# Load current player data.
func load_player_data() -> void:
	if not FileAccess.file_exists("user://player_data.save"):
		root.print_handler.print_message_1("notify down", "no saved player data")
		return
	root.print_handler.print_message_1("load down", "loading saved player data")
	var save_file = FileAccess.open("user://player_data.save", FileAccess.READ)
	while save_file.get_position() < save_file.get_length():
		var json_string = save_file.get_line()
		var json = JSON.new()
		var parse_result = json.parse(json_string)
		if not parse_result == OK:
			printerr("[ERROR] ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())
			continue
		var node_data = json.data
		var new_object = load(node_data["filename"]).instantiate()
		get_node(node_data["parent"]).add_child(new_object)
		new_object.position = Vector2(node_data["pos_x"], node_data["pos_y"])
		for i in node_data.keys():
			if i == "filename" or i == "parent" or i == "pos_x" or i == "pos_y":
				continue
			new_object.set(i, node_data[i])


# Save current player data.
func save_player_data() -> void:
	var save_file = FileAccess.open("user://player_data.save", FileAccess.WRITE)
	player_data = get_player_data()
	var json_string = JSON.stringify(player_data)
	save_file.store_line(json_string)
