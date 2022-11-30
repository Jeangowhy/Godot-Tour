tool
extends Circle

func _on_player_relocated2_circle_hit(event):
	var anitree = $"%AnimationTree"
	var pcurrent = "parameters/Transition/current"
	if event.button_index == BUTTON_LEFT:
		anitree.set(pcurrent, 0)
	elif event.button_index == BUTTON_RIGHT:
		anitree.set(pcurrent, 2)
	else:
		anitree.set(pcurrent, 1)
