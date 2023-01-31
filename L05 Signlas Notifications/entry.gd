extends Node2D

signal SignalReceived(count)
signal SignalQueueFree()

var count = 0

func _ready():
	print("_ready")
	pass

func _on_pressed(name):
	%note.text = name + " pressed"
	count += 1
	if count>3:
		emit_signal("SignalQueueFree")
	else:
		emit_signal("SignalReceived", count)

