extends KinematicBody2D
class_name Player

var speed: float = 0
var rotatespeed: float = 0
var shieldstrength: float = 0
var laserpower: float = 0
var numberoflasers: int = 0
var laserlocations := []
var health: float = 0
var friction: float = 0
var _velocity: Vector2

func _ready():
	var pos: Vector2 = Vector2(25,25)
	self.set_position(pos)

func _process(_delta):
	pass

func _physics_process(delta):
	var rotate_direction := Input.get_action_strength("rotate_right") - Input.get_action_strength("rotate_left")
	rotation += rotate_direction * rotatespeed * delta
		
	var velocity := (Input.get_action_strength("down") - Input.get_action_strength("up")) * transform.y * speed
	_velocity += (velocity - _velocity) * friction
	move_and_slide(_velocity)
