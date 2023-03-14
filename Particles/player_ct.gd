extends Node3D
class_name PlayerController

# Simple Player Controller:
# Setting InputMap: Project -> Project Settings -> Input Map
# define InpuMap action：
# - move_left: move player towards left
# - move_right: move player towards right
# - move_up: move player towards up
# - move_down: move player towards left
# - jump: make player jump up

func _unhandled_input(event):
	var mh = Input.get_axis("move_left", "move_right")
	var mv = Input.get_axis("move_up", "move_down")
	var toward = Vector3i(mh, 0, mv)
	if toward.length():
		move(toward)
	
	if Input.is_action_pressed("jump"):
		jump(Vector3i(0,1,0), 1.0)

	if not event is InputEventKey:
		return
	
	if event.is_pressed() and event.keycode == KEY_ESCAPE:
		escape()

func quit():
	get_tree().quit()

# Virtual methods
func move(to: Vector3i):
	pass
func jump(to: Vector3i, strength: float):
	pass
func escape():
	pass
