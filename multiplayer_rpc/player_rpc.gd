extends MeshInstance

var speed = 10
var can_process_input = true

onready var message = $Message
onready var myname = $Name

func set_process_input(enable):
	.set_process_input(enable)
	can_process_input = enable

func _ready():
	name = str(get_network_master())
	myname.text = str(name)

func _physics_process(delta):
	if can_process_input and multiplayer.has_network_peer() and is_network_master():
		var axis_x = int(Input.is_key_pressed(KEY_A)) - int(Input.is_key_pressed(KEY_D))
		var axis_z = int(Input.is_key_pressed(KEY_W)) - int(Input.is_key_pressed(KEY_S))
		var direction:Vector3 = Vector3(-axis_x, 0, -axis_z)
		
		if direction.length():
			# update my position by myself.
			global_translation += direction.normalized() * delta * speed
			# refresh my position of all clients by RPC API.
			rpc("remote_set_position", global_translation)


func _unhandled_input(event):
	if not event is InputEventMouseButton:
		return
	match [event.button_index, event.doubleclick, event.pressed]:
		[BUTTON_LEFT, true, true]:
			set_my_message("I'm myself!")


func set_my_message(msg):
	# This api works just for me
	#if not name != str(get_network_master()):
	if not is_network_master():
		return
	message.text = msg


remote func remote_set_position(pos):
	print_debug("authority call remote: #%d - %s - " % [get_network_master(), pos])
	global_translation = pos

remote func display_message(msg):
	message.text = str(msg)

mastersync func shake_me():
	message.text = "Shake me!"

remotesync func shake_all():
	message.text = "Shake all!"

remotesync func clicked_by_player():
	var sender = multiplayer.get_rpc_sender_id()
	message.text = str(sender) + " hit me!"
	if sender == get_network_master():
		message.text = "hit myself!"

func _on_mouse_click_area_input_event(_camera, event, _position, _normal, _shape_idx):
	if not event is InputEventMouseButton:
		return
	match event.button_index:
		BUTTON_LEFT:
			rpc("clicked_by_player")
		BUTTON_RIGHT:
			# if is_network_master():
			print_debug(is_network_master(), ":", get_network_master(), " == ", multiplayer.get_rpc_sender_id(), " ", get_tree().get_rpc_sender_id())

			if get_network_master() == multiplayer.get_rpc_sender_id():
				rpc("shake_me")
		BUTTON_MIDDLE:
			rpc("shake_all")

