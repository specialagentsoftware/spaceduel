extends Area2D
class_name Player

export var speed: float = 0
export var rotatespeed: float = 0
export var shieldstrength: float = 0
export var laserpower: float = 0
export var numberoflasers: int = 0
var laserlocations := []
export var health: float = 0

func _ready():
	var pos: Vector2 = Vector2(500,500)
	self.set_position(pos)

func _process(_delta):
	pass

func _physics_process(_delta):
	pass
	
