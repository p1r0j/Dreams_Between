# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Components.
@export var dad_houses: PackedScene
@export var mom_houses: PackedScene

# Locations.
@export var tutorial: PackedScene

# Briley's custody schedules.
var mom_custody: Array = [
	1, 2, 3, 4,
]
var dad_custody: Array = [
	5, 6, 7,
]

# Locations.
@onready var root: Node = $".."


# Load current house (either Mom's or Dad's--or the tutorial).
func load_house() -> void:
	root.print_handler.print_message_1("query down", "fetching current day")
	var current_day = root.player_handler.get_current_day()
	if current_day == 0:
		load_tutorial()
	else:
		if current_day in mom_custody:
			load_mom_house()
		elif current_day in dad_custody:
			load_dad_house()
		else:
			root.error_handler.this_is_an_invalid_that(current_day, "day")


# Load the new game tutorial.
func load_tutorial() -> void:
	root.print_handler.print_message_1("load down", "loading tutorial")
	var tutorial_instance = tutorial.instantiate()
	add_child(tutorial_instance)


# Load one of Mom's houses.
func load_mom_house() -> void:
	root.print_handler.print_message_1("load down", "loading mom house")
	var mom_houses_instance = mom_houses.instantiate()
	add_child(mom_houses_instance)


# Load one of Dad's houses.
func load_dad_house() -> void:
	root.print_handler.print_message_1("load down", "loading dad house")
	var dad_houses_instance = dad_houses.instantiate()
	add_child(dad_houses_instance)
