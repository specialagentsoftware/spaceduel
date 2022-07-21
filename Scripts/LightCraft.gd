extends Player
class_name LightCraft

onready var leftthrust := $thrustleft
onready var rightthrust := $thrustright
onready var reverseleftthrust := $reverseleft
onready var reverserightthrust := $reverseright
onready var sprite := $ShipSprite
onready var collission := $CollisionShape2D
onready var timer := $Timer
onready var teleportparticle := $TeleportParticle
onready var dashghost = preload("res://Scenes/ShadowShipLight.tscn")
onready var boostleft: float = 20
onready var isBoosting: bool = false

func _ready():
	speed = 325.0
	rotatespeed = 5.0
	friction = 0.02
	shieldstrength = 0
	laserpower = 0
	numberoflasers = 0
	laserlocations = []
	health = 0
	invulnerable = false

func _physics_process(delta):
	
	leftthrust.emitting = false
	rightthrust.emitting = false
	reverseleftthrust.emitting = false
	reverserightthrust.emitting = false
	
	if isBoosting == false:
		speed = 325.0
	else:
		speed = 5000.0
		
	if Input.is_action_pressed("special1"):
		reverseleftthrust.emitting = true
		reverserightthrust.emitting = true
		var velocity := Input.get_action_strength("special1") * transform.y * speed
		_velocity += (velocity - _velocity) * friction
		var final = _velocity.normalized()
		move_and_slide(final)
		
	if Input.is_action_pressed("special2"):
			if boostleft > 0:
				invulnerable = true
				isBoosting = true
				instance_ghost()
			else:
				isBoosting = false
	
	if Input.is_action_pressed("up"):
		leftthrust.emitting = true
		rightthrust.emitting = true
		
func _on_Timer_timeout():
		boostleft = 20
		isBoosting = false

func instance_ghost():
			
		boostleft -= 1
		var ghost: Sprite = dashghost.instance()
		get_tree().current_scene.add_child(ghost)
		ghost.global_position = global_position
		ghost.rotation = rotation
			
		if boostleft <= 0:
			timer.start()
		
