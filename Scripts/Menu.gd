extends Control

func _ready():
	pass # Replace with function body.


func _on_Light_pressed():
	GameManager.setShipType('Light')
	GameManager.startGame()


func _on_Medium_pressed():
	GameManager.setShipType('Med')
	GameManager.startGame()


func _on_Large_pressed():
	GameManager.setShipType('Large')
	GameManager.startGame()
