# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Console print headers (for asthetics only).
var headers: Dictionary = {
	"face neutral": "[~'_'~]",
	"notify up": " |!  | ",
	"notify self": " | ! | ",
	"notify down": " |  !| ",
	"query up": " |?  | ",
	"query self": " | ? | ",
	"query down": " |  ?| ",
	"load up": " |<  | ", 
	"load self": " | < | ",
	"load down": " |  <| ", 
	"write up": " |>  | ",
	"write self": " | > | ",
	"write down": " |  >| ",
}

# Locations.
@onready var root: Node = $".."


# Console 1-part message.
func print_message_1(header, content) -> void:
	if header in headers:
		prints(headers[header], str(content))
	else:
		root.error_handler.this_is_an_invalid_that(header, "header")


# Console 2-part message.
func print_message_2(header, content1, content2) -> void:
	if header in headers:
		prints(headers[header], str(content1), str(content2))
	else:
		root.error_handler.this_is_an_invalid_that(header, "header")


# Console 3-part message.
func print_message_3(header, content1, content2, content3) -> void:
	if header in headers:
		prints(headers[header], str(content1), str(content2), str(content3))
	else:
		root.error_handler.this_is_an_invalid_that(header, "header")
