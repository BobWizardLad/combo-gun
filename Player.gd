extends "res://Entity.gd"

# Player Variables
var gun = []
var amo_bag = []

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

func gun_controller():
	# when click, get mouse pos
	var target = get_global_mouse_position()
	var bullet_vec = Vector2(target.x - global_position.x, target.y - global_position.y)
	
	# summon bullet and set velocity vector towards mouse pos at velocity
	var bullet = KinematicBody2D.new()
	var bullet_sprite = Sprite.new()
	bullet_sprite.texture = load("res://bullet.png")
	bullet.set_script(load("res://Bullet.gd"))
	bullet.add_child(bullet_sprite)
	bullet.velocity = bullet_vec
	add_child(bullet)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_input(delta)
	if Input.is_action_pressed("click"):
		gun_controller()
