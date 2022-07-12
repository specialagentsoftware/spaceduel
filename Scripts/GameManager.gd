extends Node

onready var player1score = 0
onready var player2score = 0
onready var shipType = ''

func _ready():
	pass
	
func showMenu():
	pass
	
func changeLevel(_lvl:String):
	pass
	
func setShipType(shiptype:String):
	shipType = shiptype
	
func startGame():
	get_tree().change_scene("res://Scenes/World.tscn")
	
func restartGame():
	pass
	
func gameOver():
	pass
	
