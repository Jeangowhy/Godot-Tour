tool
extends Node2D

class_name Circle
signal circle_hit(event)

export(Color, RGBA) var color = Color(.2,.2,.2,.5) setget _set_color
export(float, 0, 100, .1) var radius = 20.0 setget _set_radius
export(float) var detectionRadius = 20.0 setget _set_detectionRadius
export(bool) var rectangular = false setget _set_rectangular
export(Texture) var texture setget _set_texture

func _set_color(value):
	color = value
	update()

func _set_radius(value):
	radius = value
	update()

func _set_detectionRadius(value):
	detectionRadius = value
	update()

func _set_rectangular(value):
	rectangular = value
	update()

func _set_texture(value):
	texture = value
	update()


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
