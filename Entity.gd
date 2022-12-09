extends KinematicBody2D

# Character Variables
var speed = 400
var screen_size
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = velocity.normalized() * speed
		
	position += velocity * delta
