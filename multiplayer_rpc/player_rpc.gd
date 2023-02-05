extends MeshInstance3D

var speed = 10

@onready var message = $Message
@onready var myname = $Name

func _ready():
	name = str(get_multiplayer_authority())
	myname.text = str(name)

func _physics_process(delta):
	if multiplayer.has_multiplayer_peer() and is_multiplayer_authority():
		var axis_x = int(Input.is_key_pressed(KEY_A)) - int(Input.is_key_pressed(KEY_D))
		var axis_z = int(Input.is_key_pressed(KEY_W)) - int(Input.is_key_pressed(KEY_S))
		var direction:Vector3 = Vector3(-axis_x, 0, -axis_z)
		
		if direction.length():
			# update my position by myself.
			global_position += direction.normalized() * delta * speed
#			# refresh my position of all clients by RPC API.
			rpc("remote_set_position", global_position)

func _unhandled_input(event):
	if not event is InputEventMouseButton:
		return
	match [event.button_index, event.double_click, event.pressed]:
		[MOUSE_BUTTON_LEFT, true, true]:
			set_my_message("I'm myself!")

func set_my_message(msg):
	# This api works just for me
	#if not name != str(get_multiplayer_authority()):
	if not is_multiplayer_authority():
		return
	message.text = msg


@rpc("unreliable")
func remote_set_position(pos):
	print_debug("authority call remote: #%d - %s - " % [get_multiplayer_authority(), pos])
	global_position = pos

@rpc
#@rpc("authority", "call_remote", "reliable", 1)
func display_message(meg):
	message.text = str(message)

@rpc("authority", "call_remote", "reliable", 1)
func shake_me():
	message.text = "Shake me!"

@rpc("any_peer", "call_remote", "reliable", 1)
func shake_all():
	message.text = "Shake all!"

@rpc("any_peer", "call_local", "reliable", 1)
func clicked_by_player():
	message.text = str(multiplayer.get_remote_sender_id()) + " hit me!"


func _on_mouse_click_area_input_event(camera, event, position, normal, shape_idx):
	if not event is InputEventMouseButton:
		return
	match event.button_index:
		MOUSE_BUTTON_LEFT:
			rpc("clicked_by_player")
		MOUSE_BUTTON_RIGHT:
			rpc("shake_me")
		MOUSE_BUTTON_MIDDLE:
			rpc("shake_all")

