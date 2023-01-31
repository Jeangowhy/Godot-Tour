@tool
extends Node2D

class_name Circle
signal circle_hit(event)

@export var color: Color = Color(.2,.2,.2,.5):
	set(value):
		print("set_color...")
		color = value
		queue_redraw()
@export_range(0, 100, .1) var radius = 20.0:
	set(value):
		radius = value
		queue_redraw()
@export var detectionRadius = 20.0:
	set(value):
		detectionRadius = value
		queue_redraw()
@export var rectangular = false:
	set(value):
		rectangular = value
		queue_redraw()
@export var texture:Texture:
	set(value):
		texture = value
		queue_redraw()

func _draw():
	var w = 1.4142135623730 * radius
	if rectangular:
		draw_rect(Rect2(-Vector2.ONE*w/2, Vector2(w, w)), color)
	else:
		draw_circle(Vector2.ZERO, radius, color)
	if texture:
		draw_texture_rect(texture, Rect2(Vector2.ONE*w/-2, Vector2(w, w)), false)

func _input(event):
	if event.is_pressed() and event is InputEventMouseButton:
		var mouse = event as InputEventMouseButton
		var distance = self.position.distance_to(event.position)
		var sd = self.position.distance_squared_to(event.position)
		if distance > detectionRadius:
			return
		print("detection distance %s - %s" % [distance, sd])
		emit_signal("circle_hit", mouse)
