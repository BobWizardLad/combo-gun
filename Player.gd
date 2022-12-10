extends "res://Entity.gd"

# Player Variables
var gun = []
var fire_rate = 20
var cooldown = fire_rate # Frames between shots
var amo_bag = []

# Preloaded Assets
var gunshot_rifle = preload("res://gunshot_rifle.mp3")
var scene_resource = preload("res://Bullet.tscn")

# Player Motion
func move_input(delta):
	velocity = Vector2.ZERO # Player move vector
	if(Input.is_action_pressed("move_up")):
		velocity.y -= 1
	if(Input.is_action_pressed("move_down")):
		velocity.y += 1
	if(Input.is_action_pressed("move_right")):
		velocity.x += 1
	if(Input.is_action_pressed("move_left")):
		velocity.x -= 1

# Take in bullet target and speed, and spawn the bullet in the world 
func fire_bullet(target_vector, speed):
	var bullet_vec = Vector2(target_vector.x - global_position.x, target_vector.y - global_position.y).normalized()
	var bullet = scene_resource.instance()
	bullet.velocity = bullet_vec
	bullet.speed = speed
	bullet.position = position
	get_parent().add_child(bullet)
	bullet.look_at(get_global_mouse_position())

func gun_controller():
	if Input.is_action_pressed("click") and cooldown <= 0:
		$PlayerSounds.stream = gunshot_rifle
		$PlayerSounds.play()
		fire_bullet(get_global_mouse_position(), 900)
		cooldown = fire_rate
	cooldown -= 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_input(delta)
	gun_controller()
