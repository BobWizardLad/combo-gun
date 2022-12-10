extends "res://Entity.gd"

# Character Variables
var timer = null

# Action to take on timer timeout: Remove Sprite
func despawn():
	queue_free()

# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = get_node("Lifespan")
	timer.connect("timeout", self, "despawn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
