extends Node2D

signal SignalReceived(count)

var count = 0

func _ready():
	print("_ready")
	pass

func _on_pressed(name):
	$Label.text = name + " pressed"
	count += 1
	emit_signal("SignalReceived", count)

