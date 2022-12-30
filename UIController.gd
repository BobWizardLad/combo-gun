extends Control


# Declare member variables here. Examples:
var AMMO_MARGIN_LEFT = 0.25
var AMMO_MARGIN_TOP = 0.25

var ammo_icon = TextureRect.new()
var reload = true
var mag_size = 7

# Called when the node enters the scene tree for the first time.
func _ready():
	# Bullet HUD Resources
	ammo_icon.texture = load("res://bullet.png")
	ammo_icon.set_anchor(MARGIN_LEFT, AMMO_MARGIN_LEFT)
	ammo_icon.set_anchor(MARGIN_TOP, AMMO_MARGIN_TOP)
	
	# Ammo Counter BG Width
	
	
	# Health Bar


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (reload):
		for x in range(mag_size):
			#$MagHUD.add_child(ammo_icon.duplicate())
			#ammo_icon.set_position(ammo_icon.position + 16)
			pass
	pass
