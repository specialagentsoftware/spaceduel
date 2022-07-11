extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var stars := $Stars

# Called when the node enters the scene tree for the first time.
func _ready():
	stars.emitting = true;


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
