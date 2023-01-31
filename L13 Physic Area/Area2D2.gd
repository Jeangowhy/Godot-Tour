extends Area2D

onready var area = $"."
onready var note = $"../bg/note"
onready var check_button = $"../CheckButton"

var toggle_mode = false

func _ready():
	pass

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		area.position = event.position


func _on_Area2D2_area_entered(area):
	note.text = "area entered: %s" % area

func _on_Area2D2_area_exited(area):
	note.text = "area exited: %s" % area

func _on_Area2D2_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if not toggle_mode:
		note.text = "area shape enterd: %s - %d - %d" % [area, area_shape_index, local_shape_index]

func _on_Area2D2_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	if not toggle_mode:
		note.text = "area shape exited: %s - %d - %d" % [area, area_shape_index, local_shape_index]


func _on_CheckButton_toggled(button_pressed):
	toggle_mode = button_pressed
