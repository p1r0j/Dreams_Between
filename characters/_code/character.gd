# Written by The Cranes
# for the video game,
# Dreams Between.

extends Node

# Characters in Dreams Between (to include Briley herself).
class_name Character

# Character's primary attributes.
@export var strength: float = 1.0
@export var agility: float = 1.0
@export var endurance: float = 1.0
@export var intelligence: float = 1.0
@export var wisdom: float = 1.0

# Character's awareness data.
@export var position: String = ""
