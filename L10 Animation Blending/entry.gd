tool

# BasicScene defined in L0 Basic Guide/entry.gd
extends BasicScene


# (optional) class definition with a custom icon
class_name SceneL10, "res://icon.png"

onready var camera_2d = $Camera2D

func _ready():
	pass


func _input(event):
	if event is InputEventMouseMotion:
		#camera_2d.anchor_mode = Camera2D.ANCHOR_MODE_FIXED_TOP_LEFT
		camera_2d.position = (event.position - get_viewport().size/2) / 2




