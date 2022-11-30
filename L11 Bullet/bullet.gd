extends Node2D

class_name Bullet, "res://assets/bullet.png"

signal bullet_vanished(position)

export(Vector2) var gravity:Vector2 = Vector2(0, 9.8)
export(Vector2) var direction:Vector2 = Vector2.RIGHT
export(float) var speed = 50.0
export(float) var lifetime = 10.0
export(Texture) var shape = load("res://assets/bullet-noborder.svg")
export(float) var resize = 0.2
export(int, "None", "Horizental", "Vertical", "Both") var flip = 1
var flips = [Vector2(1, 1), Vector2(-1, 1), Vector2(1, -1), Vector2(-1, -1)]
var velocity:Vector2
var SmokeTrailPS = load("res://L11 Bullet/SmokeTrail.tscn")


func _ready():
	set_as_toplevel(true)
	add_child(SmokeTrailPS.instance())
	rotation = direction.angle()
	velocity =  direction * speed
	yield(get_tree().create_timer(lifetime), "timeout")
	self.queue_free()
	
func _process(delta):
	velocity += gravity * delta
	position +=  velocity
	var distance = position.distance_to(Vector2.ZERO)
	if distance * distance > get_viewport().size.length_squared():
		emit_signal("bullet_vanished", position)
		self.queue_free()
	
func _draw():
	if shape:
		var size = shape.get_size()
		var rect = Rect2(-size/2*resize, size * resize * flips[flip])
		draw_texture_rect(shape, rect, false, Color.white, false)
		#draw_rect(Rect2(-50, -50, 100, 100), Color(.1,.1,.1,.2), true)


