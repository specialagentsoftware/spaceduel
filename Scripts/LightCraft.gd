extends Player
class_name LightCraft

onready var leftthrust := $thrustleft
onready var rightthrust := $thrustright
onready var reverseleftthrust := $reverseleft
onready var reverserightthrust := $reverseright
onready var sprite := $ShipSprite
onready var collission := $CollisionShape2D
onready var timer := $Timer

func _ready():
	speed = 400.0
	rotatespeed = 5.0
	friction = 0.02
	shieldstrength = 0
	laserpower = 0
	numberoflasers = 0
	laserlocations = []
	health  = 0

func _physics_process(delta):
	
	leftthrust.emitting = false
	rightthrust.emitting = false
	reverseleftthrust.emitting = false
	reverserightthrust.emitting = false
	
	if Input.is_action_pressed("special1"):
		reverseleftthrust.emitting = true
		reverserightthrust.emitting = true
		var velocity := (Input.get_action_strength("special1") -0) * transform.y * speed
		_velocity += (velocity - _velocity) * friction
		move_and_slide(_velocity)
		
	if Input.is_action_just_pressed("special2"):
		collission.visible = false
		sprite.visible = false
		leftthrust.emitting = false
		rightthrust.emitting = false
		reverseleftthrust.emitting = false
		reverserightthrust.emitting = false
		timer.start()
		
	
	if Input.is_action_pressed("up"):
		leftthrust.emitting = true
		rightthrust.emitting = true
		
func _on_Timer_timeout():
		collission.visible = true
		sprite.visible = true
