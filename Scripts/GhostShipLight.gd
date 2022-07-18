extends Tween

# Called when the node enters the scene tree for the first time.
func _ready():
	$Tween.interpolate_property(self,'modulate:a',1.0,0.0,0.5,3,1)
	$Tween.start()
