extends Player
class_name LightCraft

onready var leftthrust := $thrustleft
onready var rightthrust := $thrustright
onready var reverseleftthrust := $reverseleft
onready var reverserightthrust := $reverseright

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
		print("Pressed 1")
		
	if Input.is_action_pressed("special2"):
		print("Pressed 2")
		
	if Input.is_action_pressed("up"):
		leftthrust.emitting = true
		rightthrust.emitting = true
		
	if Input.is_action_pressed("down"):
		reverseleftthrust.emitting = true
		reverserightthrust.emitting = true

