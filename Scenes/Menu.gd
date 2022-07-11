extends Control

func _ready():
	pass # Replace with function body.


func _on_Light_pressed():
	GameManager.startGame('Light')


func _on_Medium_pressed():
	GameManager.startGame('Med')


func _on_Large_pressed():
	GameManager.startGame('Large')
