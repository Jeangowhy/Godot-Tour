extends PlayerController


func move(to: Vector3i):
	print_debug("move: ", to)

func jump(to: Vector3i, strength: float):
	print_debug("move: ", to, strength)

func escape():
	quit()
