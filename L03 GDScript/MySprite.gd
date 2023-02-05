@tool
@icon("res://icon.png")

extends Sprite2D
class_name MySprite
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
	if Engine.is_editor_hint():
		rotation += 90 * delta * 3.14 / 180
	else:
		rotation -= 18 * delta * 3.14 / 180

#func _physics_process(delta):
#	pass


# http://kehomsforge.com/tutorials/single/gdConditionalProperty
# Object._get_property_list() _get() _set()
