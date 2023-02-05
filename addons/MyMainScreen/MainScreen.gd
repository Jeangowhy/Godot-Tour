@tool
extends BoxContainer
class_name MainScreen
# Script for main screen plugin will not been executed, use plugin script instead.

func _init():
	print_debug("Main.tscn init")

# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug("Main.tscn ready")

func _unhandled_input(event):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Label:
		$Label.text = "size: %s" % size

