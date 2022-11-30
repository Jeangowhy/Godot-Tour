extends Node2D

onready var tween = $"%Tween"

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("shot"):
		var bullet = Bullet.new()
		bullet.position = get_viewport().size / 2
		bullet.direction = (get_global_mouse_position() - bullet.position).normalized()
		#bullet.direction = Vector2(rand_range(-1.0, 1.0), rand_range(-1.0, 1.0))
		bullet.speed = .5 * get_global_mouse_position().distance_to(bullet.position)
		#bullet.speed = rand_range(10, 50)
		bullet.connect("bullet_vanished", self, "_on_Bullet_bullet_vanished")
		add_child(bullet)

func _on_Tween_tween_all_completed():
	pass # Replace with function body.


func _on_Bullet_bullet_vanished(position):
	print("bullet vanished ", position)
	
