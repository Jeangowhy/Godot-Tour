tool
extends Camera

export var motion = 5.0 setget set_motion
export var angle_min = 15.0 setget set_angle_min
export var angle_max = 45.0 setget set_angle_max

var dir = 1

func set_motion(value):
	motion = value

func set_angle_min(value):
	angle_min = value

func set_angle_max(value):
	angle_max = value

func _ready():
	pass

func _physics_process(delta):
	var r:Vector3 = get("rotation_degrees")
	if( r.x < angle_min ):
		dir = 1
	elif( r.x > angle_max ):
		dir = -1
	var i = range_lerp(r.x, angle_min, angle_max, -1.0, 1.0)
	.rotate_x(dir * (1 - abs(i) + 0.2) * motion * delta * 3.14 / 180)
