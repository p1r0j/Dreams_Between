# Written by The Cranes
# for the video game,
# Dreams Between.

extends House

# Houses that Mom lives in.
class_name MomHouse

# Mom's housing calendars.
var house_1_calendar: Array = [
	1, 2, 3, 4
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
	if current_day in house_1_calendar:
		if room_1:
			var house_1_instance = room_1.instantiate()
			add_child(house_1_instance)
		else:
			root.error_handler.this_not_found("room 1")
	elif current_day in house_2_calendar:
		if room_2:
			var house_2_instance = room_2.instantiate()
			add_child(house_2_instance)
		else:
			root.error_handler.this_not_found("room 2")
	elif current_day in house_3_calendar:
		if room_3:
			var house_3_instance = room_3.instantiate()
			add_child(house_3_instance)
		else:
			root.error_handler.this_not_found("room 3")
	else:
		root.error_handler.this_is_an_invalid_that(current_day, "day")
