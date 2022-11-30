tool

extends Sprite
class_name MySprite, "res://icon.png"
# https://docs.godotengine.org/en/stable/development/file_formats/gdscript_grammar.html

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# http://kehomsforge.com/tutorials/single/process-physics-process-godot
# Called every frame. 'delta' is the elapsed time since the previous frame.
# In Godot we sort of get this decoupling by having the 
# _physics_process() (fixed time step) and the _process() (as fast as possible) functions.
func _process(delta):
	if Engine.editor_hint:
		rotation_degrees += 90 * delta
	else:
		rotation_degrees -= 18 * delta

#func _physics_process(delta):
#	pass


# http://kehomsforge.com/tutorials/single/gdConditionalProperty
# Object._get_property_list() _get() _set()
