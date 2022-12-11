extends RigidBody2D

# Character Variables
var timer = null
var velocity = Vector2()
var speed = 400

signal hit

# Action to take on timer timeout: Remove Sprite
func despawn():
	queue_free()

# Function to find out what the bullet hit and remove them accordingly
func elim_target(var1):
	var targets = $Area2D.get_overlapping_areas()
	for target in targets:
		if target.get_parent().hostile == true:
			target.get_parent().queue_free()
			despawn()

# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = get_node("Lifespan")
	timer.connect("timeout", self, "despawn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = velocity.normalized() * speed
	position += velocity * delta
