extends Node2D

onready var lightcraft = preload("res://Scenes/LightCraft.tscn")
onready var medcraft = preload("res://Scenes/MedCraft.tscn")
onready var largecraft = preload("res://Scenes/LargeCraft.tscn")
onready var stars := $Stars

# Called when the node enters the scene tree for the first time.
func _ready():
	if(GameManager.shipType == 'Light'):
		var playership = lightcraft.instance()
		get_tree().current_scene.add_child(playership)
	elif(GameManager.shipType == 'Med'):
		var playership = medcraft.instance()
		get_tree().current_scene.add_child(playership)
	elif(GameManager.shipType == 'Large'):
		var playership = largecraft.instance()
		get_tree().current_scene.add_child(playership)
	stars.emitting = true;
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
