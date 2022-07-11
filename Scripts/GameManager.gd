extends Node

onready var player1score = 0
onready var player2score = 0
onready var level = 0
onready var worldscene = preload("res://Scenes/World.tscn")
onready var lightcraft = preload("res://Scenes/LightCraft.tscn")
onready var medcraft = preload("res://Scenes/MedCraft.tscn")
onready var largecraft = preload("res://Scenes/LargeCraft.tscn")

func _ready():
	pass
	
func showMenu():
	pass
	
func changeLevel(_lvl:String):
	pass
	
func startGame(shiptype:String):
	
	var type
	
	if(shiptype == 'Light'):
		type = lightcraft
	elif (shiptype == 'Med'):
		type = medcraft
	elif (shiptype == 'Large'):
		type = largecraft
		
	get_tree().change_scene("res://Scenes/World.tscn")
	#add_child(type)
	
func restartGame():
	pass
	
func gameOver():
	pass
	
