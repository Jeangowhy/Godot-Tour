extends SceneTree

func _init():
	print(Vector3.RIGHT, Vector3.FORWARD, Vector3.UP, 0 | 321)
	vector_demo()
	quit()


func _ready():
	quit() # why not? SceneTree no _ready() life cycle funtion


func vector_demo():
	var a = Vector2 (2, 5) 
	var b = Vector2 (3, 1)
	var format = "Normalized vector %s is %s, "
	var angle = "angle of %s - %s is %d degree"
	print(format % [a, a.normalized()])
	print(angle % [a, b, (a - b).angle()*180/PI])
	print(angle % [b, a, (b - a).angle()*180/PI])
	print("dot(%s, %s) = %s " % [a, b, 	a.dot(b)])


