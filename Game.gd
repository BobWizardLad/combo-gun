extends Node2D


# Need all three enemies to be gone
var goal1 = false
var goal2 = false
var goal3 = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Check to see if the enemies are gone, if so Display you win
func _process(delta):
	if not self.has_node("Enemy"):
		goal1 = true
	if not self.has_node("Enemy3"):
		goal2 = true
	if not self.has_node("Enemy4"):
		goal3 = true
	if goal1 and goal2 and goal3:
		$YouWin.visible = true
