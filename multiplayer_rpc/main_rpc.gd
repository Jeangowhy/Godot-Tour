extends Node3D


const PORT = 4567
const HOST = "127.0.0.1"

var multiplayer_peer = ENetMultiplayerPeer.new()
var connected_peer_ids = []
var local_player

@onready var message_input = $MessageInput
@onready var menu = $Menu
@onready var host = $Menu/bg/vbox/Host
@onready var join = $Menu/bg/vbox/Join
@onready var network_side = $NetworkInfo/NetworkSide
@onready var peer_node_inf = $NetworkInfo/PeerNodeInfo


func _ready():
	# Start the server/client by pass "--server" or "--client" argument.
	if "--server" in OS.get_cmdline_args():
		start_server()
	elif "--client" in OS.get_cmdline_args():
		start_client()
	else:
		menu.visible = true

	host.pressed.connect(start_server)
	join.pressed.connect(start_client)

	#message_input.connect("text_submitted", _on_message_input_text_submitted)
	message_input.connect("focus_entered", _on_message_input_focus_entered)
	message_input.connect("focus_exited", _on_message_input_focus_exited)


func toggle_pause_mode():
	var mode = get_tree().paused
	var fps = ProjectSettings.get_setting("physics/common/physics_ticks_per_second", 60)
	# set_physics_process(false)
	# set_process(false)
	get_tree().set_pause(!mode)
	if mode:
		Engine.set_physics_ticks_per_second(fps)
	else:
		Engine.set_physics_ticks_per_second(fps/3)


func _unhandled_input(event):
	if not event is InputEventKey or not event.is_pressed():
		return
	if event.keycode == KEY_ESCAPE:
		clear_connections()
	elif event.keycode == KEY_ENTER and not message_input.has_focus():
		message_input.grab_focus()
	elif event.keycode == KEY_P:
		toggle_pause_mode()

func reset_signals(is_server = true):
	clear_signal(multiplayer_peer.peer_disconnected)
	clear_signal(multiplayer_peer.peer_connected)
	clear_signal(multiplayer.server_disconnected)
	clear_signal(multiplayer.connected_to_server)
	clear_signal(multiplayer.connection_failed)
	if is_server:
		# Signals for server
		multiplayer_peer.peer_disconnected.connect(peer_disconnected)
		multiplayer_peer.peer_connected.connect(new_peer_connected)
	else:
		# Signals for clietns
		multiplayer.server_disconnected.connect(func(): destroy_peer(get_multiplayer_authority()))
		multiplayer.connected_to_server.connect(func(): print_debug("Connected to server: %s:%d" % [HOST, PORT]))
		multiplayer.connection_failed.connect(connection_failed)

func clear_signal(sgl: Signal):
	for conn in sgl.get_connections():
		print_debug("disconnect observer: ", conn["signal"])
		conn["signal"].disconnect(conn.callable)


func start_server():
	reset_signals(true)
	message_input.text = "Starting a new server ..."
	var err = multiplayer_peer.create_server(PORT)
	if OK != err:
		print_debug("Can't create an ENet server on %s:%s" % [HOST, PORT])
		return
		
	multiplayer.multiplayer_peer = multiplayer_peer
	menu.visible = false
	network_side.text = "Server"
	message_input.text = ""
	print_debug("Start ENet Server on %s:%d." % [HOST, PORT])
	
	# create server side player
	create_player()


func start_client():
	reset_signals(false)
	message_input.text = "Starting a new client ..."
	var err = multiplayer_peer.create_client(HOST, PORT)
	if OK != err:
		print_debug("Can't create an ENet client on %s:%s" % [HOST, PORT])
		return
		
	multiplayer.multiplayer_peer = multiplayer_peer
	menu.visible = false
	network_side.text = "Client"
	print_debug("Start ENet Client on %s:%d." % [HOST, PORT])
	await get_tree().create_timer(0.5).timeout
	message_input.text = ""


func connection_failed():
	message_input.text = "Connection failed: %s:%d" % [HOST, PORT]
	await get_tree().create_timer(3).timeout
	menu.visible = true


func new_peer_connected(peer_id):
	print_debug("new peer connected: %d." % [peer_id])
	message_input.text = "new peer connected: %d." % [peer_id]
	await get_tree().create_timer(0.5).timeout
	message_input.text = ""
	# create player on all clients side.
	rpc("new_peer_broadcast", peer_id)
	rpc_id(peer_id, "old_peer_replication", connected_peer_ids)
	# create player on server side for client.
	create_player(peer_id)


func create_player(peer_id = 1):
	connected_peer_ids.append(peer_id)
	var player = preload("res://player.tscn").instantiate()
	player.set_multiplayer_authority(peer_id)
	add_child(player)
	rpc("refresh_peer_node_inf")
	if peer_id == multiplayer.get_unique_id():
		local_player = player

	# exit power saving mode when peers connection comming
	set_physics_process(true)
	set_process(true)


func peer_disconnected(peer_id):
	print_debug("peer disconnected: %d." % [peer_id])
	# Disconnect peer specific from host.
	# multiplayer_peer.disconnect_peer(peer_id)
	
	# Wait ENet for less seconds to keep clean
	# Destroy player node on other clients peers
	call_deferred("rpc", "destroy_peer_broadcast", peer_id)
	#rpc("destroy_peer_broadcast", peer_id)


func clear_connections():
	multiplayer_peer.close()
	multiplayer.multiplayer_peer = null
	#get_tree().set_multiplayer_poll_enabled(false)
	#get_tree().multiplayer_poll = false
	for id in connected_peer_ids:
		get_node(str(id)).queue_free()
	connected_peer_ids.clear()
	menu.visible = true
	# power saving when there no connection
	set_physics_process(false)
	set_process(false)

func destroy_peer(peer_id):
	if peer_id == 1:
		print_debug("Server closed!")
		clear_connections()
		return
	get_node(str(peer_id)).queue_free()
	connected_peer_ids.remove_at(connected_peer_ids.find(peer_id))
	refresh_peer_node_inf()


@rpc 
#@rpc("authority", "call_remote", "reliable", 1)
func new_peer_broadcast(new_peer_id):
	create_player(new_peer_id)

@rpc("authority", "call_local", "reliable", 1)
func destroy_peer_broadcast(peer_id):
	destroy_peer(peer_id)


@rpc("any_peer", "call_local")
func refresh_peer_node_inf():
	peer_node_inf.text = "#%d / %d" % [multiplayer.get_unique_id(), len(connected_peer_ids)]

@rpc("any_peer")
func old_peer_replication(peer_ids):
	for peer_id in peer_ids:
		create_player(peer_id)


func _on_message_input_focus_entered():
	local_player.enable_input(false)

func _on_message_input_focus_exited():
	local_player.enable_input(true)

func _on_message_input_text_submitted(new_text):
	local_player.rpc("display_message", new_text)
	message_input.text = ""
	message_input.release_focus()
	message_input.accept_event();
