# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Locations.
const PLAYER = preload("res://player/player.tscn") # Player's game data.

# Root components.
@onready var error_handler: Node = $ErrorHandler
@onready var print_handler: Node = $PrintHandler
@onready var player_handler: Node = $PlayerHandler
@onready var house_handler: Node = $HouseHandler


# Root's startup function.
func _ready() -> void:
	print_handler.print_message_1("face neutral", "root startup")
	var player_instance = PLAYER.instantiate()
	player_handler.add_child(player_instance)
	print_handler.print_message_1("load down", "loading player")
	player_handler.load_player_data()
	print_handler.print_message_1("load down", "loading house")
	house_handler.load_house()
