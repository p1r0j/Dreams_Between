# Written by The Cranes
# for the video game,
# Dreams Between.

extends DadRoom


# Startup function.
func _ready() -> void:
	root.print_handler.print_message_1("face neutral", "room startup")
	root.print_handler.print_message_1("load down", "loading agenda")
	_load_agenda()
