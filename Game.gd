extends Node2D


# Need all three enemies to be gone
var run_once = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Check to see if the enemies are gone, if so Display you win
func _process(delta):
	print(self.get_children())
	var nodes = [
		self.has_node("Enemy"),
		self.has_node('Enemy3'),
		self.has_node('Enemy4')
	]
	if nodes.count(false) == len(nodes) and run_once == true:
		$YouWin.visible = true
		$Player.free()
		run_once = false
