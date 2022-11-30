extends Node2D
class_name BasicScene

onready var basic_root = $"."

var note:String = "This is Basic Guide."

func _ready():
	pass


func _on_box_circle_hit(event):
	match $bg/note.text:
		"Basic Guide":
			$bg/note.text = "You hit me"
		"You hit me":
			$bg/note.text += " again!"
		"You hit me again!":
			$bg/note.text = "Woo, it hurt!"
		_:
			$bg/note.text = "Basic Guide"
