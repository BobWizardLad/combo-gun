extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	offset.x = (get_global_mouse_position().x - get_parent().position.x) / 2
	offset.y = (get_global_mouse_position().y - get_parent().position.y) / 2
	pass
