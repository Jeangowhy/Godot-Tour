extends Node
class_name PlayerController

const TIPS = """
Simple Player Controller
============================================================
Nodes structure sugested:
- Player(Node2D/3D)
	+- Camera
	+- Mesh...
============================================================
Setting InputMap: Project -> Project Settings -> Input Map
define InpuMap action：
 -  move_left: move player towards left
 - move_right: move player towards right
 -    move_up: move player towards up
 -  move_down: move player towards left
 -   yaw_left: make player turn to left
 -  yaw_right: make player turn to right
 -   pitch_up: make player pitch up
 - pitch_down: make player pitch down
"""
const ACTIONS = ["move_left", "move_right", "move_up", "move_down",
				 "jump", "yaw_left", "yaw_right", "pitch_up", "pitch_down",]

var use_mouse_motion = true
var speed = 10.0
var sensitivity = 0.4
var sens_captured = 0.3
var tips = true

func _unhandled_input(event):

	var undefs = Array()
	for action in ACTIONS:
		if not InputMap.has_action(action):
			undefs.append(action)
	if tips and undefs.size():
		tips = false
		return print_debug("InputMap Undefined: ", undefs, TIPS)


	if use_mouse_motion and event is InputEventMouseMotion:
		var vy = event.relative.x * sensitivity * sens_captured
		var vp = event.relative.y * sensitivity * sens_captured
		if vy:
			yaw(deg2rad(vy))
		if vp:
			pitch(deg2rad(vp))
	
	if Input.is_action_pressed("jump"):
		jump(Vector3(0,1,0), 1.0)
	
	if event is InputEventMouseButton:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

	if event is InputEventJoypadMotion:
		pass
	
	if not event is InputEventKey:
		return
	if event.is_pressed() and event.scancode == KEY_ESCAPE:
		if Input.mouse_mode != Input.MOUSE_MODE_CAPTURED:
			escape()
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED ^ Input.mouse_mode
	
func _physics_process(delta):
	#var axis_x = int(Input.is_key_pressed(KEY_D)) - int(Input.is_key_pressed(KEY_A))
	#var axis_z = int(Input.is_key_pressed(KEY_S)) - int(Input.is_key_pressed(KEY_W))
	## motion relative of global_transform.basis
	#var direction: Vector3 = axis_x * basis.x + axis_z * basis.z
	#global_position += direction.normalized() * speed * delta
	var vy = Input.get_axis("yaw_left", "yaw_right")
	var vp = Input.get_axis("pitch_up", "pitch_down")
	if vy:
		yaw(deg2rad(vy))
	if vp:
		pitch(deg2rad(vp))
	var mh = Input.get_axis("move_left", "move_right")
	var mv = Input.get_axis("move_up", "move_down")
	var toward = Vector3(mh, 0, mv).normalized() * speed * delta
	if toward.length():
		move(toward)


# Default methods


func quit():
	get_tree().quit()


func deg2rad(val: float):
	return deg2rad(val)    # Godot 3.x
	# return deg_to_rad(val) # Godot 4.x


func move_forwards(player: Node, to: Vector3, camera: Node = null):
	if camera == null:
		camera = player
	if player is Node2D and camera is Node2D:
		player.global_position += to
	elif player is Spatial and camera is Spatial:
		var basis = player.transform.basis
		to = basis.x * to.x + basis.y * to.y + basis.z * to.z
		player.transform.origin += to
	else:
		print_debug("Player node must be Node2D/3D.", player, camera)


func look_around(player: Node, to: Vector3, camera):
	if player is Node2D:
		player.roatate(to.y)
	elif player is Spatial:
		var basis = player.transform.basis
		camera.rotation += basis.x * to.x + basis.y * to.y + basis.z * to.z
		# player.rotation += player.transform.basis.y * to.y
		# use Euler angles to rotate camera
		# var angle = clamp(camera.rotation.x - to.x, -PI * 0.4, PI * 0.4)
		# camera.rotate_x(angle - camera.rotation.x)
	else:
		print_debug("Player node must be Node2D/3D.", player)


# Virtual methods
func move(_to: Vector3): pass
func jump(_to: Vector3, _strength: float): pass
func yaw(_rad: float): pass
func pitch(_rad: float): pass
func escape(): pass
