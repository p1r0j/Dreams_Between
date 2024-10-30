# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Agendas for each of Briley's rooms.
class_name Agenda

# Locations.
@onready var root = get_node("../../../..")


# Startup function.
func _ready() -> void:
	root.print_handler.print_message_1("face neutral", "agenda startup")
