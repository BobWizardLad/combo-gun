extends Camera2D

var screen_size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	screen_size = get_viewport_rect().size
	offset.x = (get_global_mouse_position().x - get_parent().position.x) / 2
	offset.y = (get_global_mouse_position().y - get_parent().position.y) / 2
	$GameUI.set_position(Vector2((position.x + offset.x) - (screen_size.x/2), (position.y + offset.y) - (screen_size.y/2)))
