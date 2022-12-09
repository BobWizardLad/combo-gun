extends "res://Entity.gd"

# Character Variables
var lifespan = 100

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(lifespan <= 0):
		queue_free()
	lifespan -= 1
