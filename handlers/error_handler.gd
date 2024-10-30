# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node


# Console error messages.
func this_not_found(this) -> void:
	printerr("[ERROR] " + str(this) + " not found")


func this_is_an_invalid_that(this, that) -> void:
	printerr("[ERROR] " + str(this) + " is an invalid " + str(that))


func bad_response_from_this(this) -> void:
	printerr("[ERROR] " + "bad response from " + str(this))
