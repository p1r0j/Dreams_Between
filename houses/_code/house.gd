# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Houses that Mom and Dad live in.
class_name House

# Brailey's different rooms.
@export var room_1: PackedScene
@export var room_2: PackedScene
@export var room_3: PackedScene

# Inventory for all houses.
var alarm_clock: PackedScene
var bed: PackedScene
var bedding: PackedScene
var books: Dictionary
var furniture: PackedScene
var jammies: Dictionary
var journal: PackedScene
var lighting: PackedScene
var stuffies: Dictionary
var toys: Dictionary
var tv: PackedScene
var wall_decoration: PackedScene
