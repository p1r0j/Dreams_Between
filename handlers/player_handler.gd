# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Empty containers.
var player_data: Dictionary

# Locations.
@onready var root: Node = $".."


# Load existing save data.
func load_player_data() -> void:
	root.print_handler.print_message_1("load down", "loading player data")
	get_child(0).load_player_data()


# Save current player data.
func save_player_data() -> void:
	root.print_handler.print_message_1("query down", "fetching player data")
	player_data = get_child(0).get_player_data()


# Read the active day.
func get_current_day() -> int:
	var current_day = get_child(0).day
	root.print_handler.print_message_1("notify up", current_day)
	return current_day
