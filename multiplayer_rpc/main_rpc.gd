extends Spatial


const PORT = 4567
const HOST = "127.0.0.1"
enum PeerType {SERVER, CLIENT}

var multiplayer_peer = NetworkedMultiplayerENet.new()
var connected_peer_ids = []
var local_player

onready var message_input: LineEdit = $MessageInput
onready var menu = $Menu
onready var host = $Menu/bg/vbox/Host
onready var join = $Menu/bg/vbox/Join
onready var network_side = $NetworkInfo/NetworkSide
onready var peer_node_inf = $NetworkInfo/PeerNodeInfo


func _ready():
	
	# Start the server/client by pass "--server" or "--client" argument.
	if "--server" in OS.get_cmdline_args():
		start_server()
	elif "--client" in OS.get_cmdline_args():
		start_client()
	else:
		menu.visible = true

	host.connect("pressed", self, "start_server")
	join.connect("pressed", self, "start_client")
	message_input.connect("text_entered", self, "_on_message_input_text_submitted")
	message_input.connect("focus_entered", self, "_on_message_input_focus_entered")
	message_input.connect("focus_exited", self, "_on_message_input_focus_exited")


func _unhandled_input(event):
	if not event is InputEventKey or not event.is_pressed():
		return
	if event.scancode == KEY_ESCAPE:
		clear_connections()
	elif event.scancode == KEY_ENTER and not message_input.has_focus():
		message_input.grab_focus()
	elif event.scancode == KEY_ENTER and message_input.has_focus():
		message_input.release_focus()



func reset_signals(peer = PeerType.SERVER):
	clear_signal(multiplayer_peer, "peer_disconnected")
	clear_signal(multiplayer_peer, "peer_connected")
	clear_signal(multiplayer_peer, "server_disconnected")
	clear_signal(multiplayer, "server_disconnected")
	clear_signal(multiplayer, "connected_to_server")
	clear_signal(multiplayer, "connection_failed")
	if peer == PeerType.SERVER:
		# Signals for server
		multiplayer_peer.connect("peer_disconnected", self, "peer_disconnected")
		multiplayer_peer.connect("peer_connected", self, "new_peer_connected")
	else:
		# Signals for clietns
		#multiplayer.connect("server_disconnected", self, "server_disconnected")
		multiplayer_peer.connect("server_disconnected", self, "server_disconnected")
		multiplayer.connect("connected_to_server", self, "connected_to_server")
		multiplayer.connect("connection_failed", self, "connection_failed")

func clear_signal(obj: Object, sgl: String):
	for obs in obj.get_signal_connection_list(sgl):
		# Skip default signal observers
		if obs.target is SceneTree:
			continue
		print_debug("Connected signal: ", obs)
		obj.disconnect(obs["signal"], obs.target, obs.method)

func start_server():
	reset_signals()
	message_input.text = "Starting a new server ..."
	var err = multiplayer_peer.create_server(PORT)
	if OK != err:
		print_debug("Can't create an ENet server on %s:%s" % [HOST, PORT])
		return
		
	multiplayer.set_network_peer(multiplayer_peer)
	menu.visible = false
	network_side.text = "Server"
	message_input.text = ""
	print_debug("Start ENet Server on %s:%d." % [HOST, PORT])
	
	# create server side player
	create_player()


func start_client():
	reset_signals(PeerType.CLIENT)
	ProjectSettings.set_setting("network/limits/tcp/connect_timeout_seconds", 9)
	message_input.text = "Starting a new client ..."
	var err = multiplayer_peer.create_client(HOST, PORT)
	if OK != err:
		print_debug("Can't create an ENet client on %s:%s" % [HOST, PORT])
		return
		
	multiplayer.set_network_peer(multiplayer_peer)
	menu.visible = false
	network_side.text = "Client"
	message_input.text = ""
	print_debug("Start ENet Client on %s:%d." % [HOST, PORT])


func server_disconnected():
	# get peer id: get_multiplayer_authority() in Godot 4.x
	print_debug("server disconnected: %s:%d" % [HOST, PORT])
	destroy_peer(get_network_master())


func connected_to_server():
	print_debug("Connected to server: %s:%d" % [HOST, PORT])


func connection_failed():
	message_input.text = "Connection failed: %s:%d" % [HOST, PORT]
	menu.visible = true
	multiplayer_peer.close_connection()
	# await get_tree().create_timer(3).timeout in Godot 4.x
	yield( get_tree().create_timer(3), "timeout")


func new_peer_connected(peer_id):
	print_debug("new peer connected: %d." % [peer_id])
	message_input.text = "new peer connected: %d." % [peer_id]
	yield( get_tree().create_timer(0.5), "timeout")

	message_input.text = ""
	# create player on all clients side.
	rpc("new_peer_broadcast", peer_id)
	rpc_id(peer_id, "old_peer_replication", connected_peer_ids)
	# create player on server side for client.
	create_player(peer_id)


func create_player(peer_id = 1):
	connected_peer_ids.append(peer_id)
	# use instantiate() in Godot 4
	var player = preload("res://player.tscn").instance()
	# player.set_multiplayer_authority(peer_id)
	player.set_network_master(peer_id)
	add_child(player)
	rpc("refresh_peer_node_inf")
	if peer_id == multiplayer.get_network_unique_id():
		local_player = player


func peer_disconnected(peer_id):
	# Destroy player node on other peers
	rpc("destroy_peer_broadcast", peer_id)


func clear_connections():
	multiplayer_peer.close_connection()
	multiplayer.set_network_peer(null)
	#get_tree().set_multiplayer_poll_enabled(false)
	#get_tree().multiplayer_poll = false
	for id in connected_peer_ids:
		get_node(str(id)).queue_free()
	connected_peer_ids.clear()
	menu.visible = true


func destroy_peer(peer_id):
	if peer_id == 1:
		print_debug("Server closed!")
		clear_connections()
		return
	get_node(str(peer_id)).queue_free()
	connected_peer_ids.remove(connected_peer_ids.find(peer_id))
	refresh_peer_node_inf()



#@rpc("any_peer", "call_local")
remotesync func refresh_peer_node_inf():
	peer_node_inf.text = "#%d / %d" % [multiplayer.get_network_unique_id(), len(connected_peer_ids)]


#@rpc("any_peer", "call_local", "reliable", 1)
remotesync func destroy_peer_broadcast(peer_id):
	destroy_peer(peer_id)


#@rpc("authority", "call_remote", "reliable", 1)
remote func new_peer_broadcast(new_peer_id):
	create_player(new_peer_id)


#@rpc("authority", "call_remote", "reliable", 1)
remote func old_peer_replication(peer_ids):
	for peer_id in peer_ids:
		create_player(peer_id)


func _on_message_input_focus_entered():
	local_player.set_process_input(false)

func _on_message_input_focus_exited():
	local_player.set_process_input(true)


func _on_message_input_text_submitted(new_text):
	local_player.rpc("display_message", new_text)
	message_input.text = ""
	message_input.release_focus()
	message_input.accept_event();


# Equvalence RPC API in  Godot 3.x/4.x
#
# |      Godot 3.5 keywords     |                 Godot 4 @rpc annotations                |
# |-----------------------------|---------------------------------------------------------|
# | remote                      | "any_peer", "call_remote"                               |
# | remotesync                  | "any_peer", "call_local"                                |
# | master                      | "authority", "call_remote"                              |
# | mastersync                  | "authority", "call_local"                               |
# | rpc_unreliable()            | @rpc("unreliable")                                      |
# | rpc_unreliable(master func) | @rpc or @rpc("authority", "call_remote", "reliable", 1) |
