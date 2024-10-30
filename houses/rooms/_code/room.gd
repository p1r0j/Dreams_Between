# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Briley's bedrooms (consisting of both Mom & Dad's).
class_name Room

# Room attributes.
@export var comfort_level: int = 1 # Translates to both power and difficulty level.

# Agendas for Briley's rooms.
@export var agenda: PackedScene

# Locations
@onready var root = get_node("../../..")


# Load the current day's agenda.
func _load_agenda() -> void:
	root.print_handler.print_message_1("query down", "fetching current day")
	var current_day = root.player_handler.get_current_day()
	var agenda_path = "res://agendas/agenda_%d/agenda_%d.tscn" % [current_day, current_day]
	var agenda_scene = load(agenda_path) as PackedScene
	if agenda_scene:
		var agenda_instance = agenda_scene.instantiate()
		add_child(agenda_instance)
	else:
		root.error_handler.this_not_found("agenda")
