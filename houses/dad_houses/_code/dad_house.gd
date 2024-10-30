# Written by The Cranes
# for the video game,
# Dreams Between.

extends House

# Houses that Dad lives in.
class_name DadHouse

# Dad's housing calendars.
var house_1_calendar: Array = [
	5, 6, 7
]
var house_2_calendar: Array = []
var house_3_calendar: Array = []

# Locations.
@onready var root = get_node("../..")


# Startup function.
func _ready() -> void:
	root.print_handler.print_message_1("face neutral", "dad house startup")
	root.print_handler.print_message_1("query down", "fetching current day")
	var current_day = root.player_handler.get_current_day()
	root.print_handler.print_message_1("query self", "checking calendar")
	if current_day in house_1_calendar:
		if room_1:
			root.print_handler.print_message_1("load down", "loading room 1")
			var house_1_instance = room_1.instantiate()
			add_child(house_1_instance)
		else:
			root.error_handler.this_not_found("room 1")
	elif current_day in house_2_calendar:
		if room_2:
			root.print_handler.print_message_1("load down", "loading room 2")
			var house_2_instance = room_2.instantiate()
			add_child(house_2_instance)
		else:
			root.error_handler.this_not_found("room 2")
	elif current_day in house_3_calendar:
		if room_3:
			root.print_handler.print_message_1("load down", "loading room 3")
			var house_3_instance = room_3.instantiate()
			add_child(house_3_instance)
		else:
			root.error_handler.this_not_found("room 3")
	else:
		root.error_handler.this_is_an_invalid_that(current_day, "day")
