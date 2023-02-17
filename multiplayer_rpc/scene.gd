##!/usr/bin/env -S godot -s
## @tool
#
#class_name MyNewScene
#extends SceneTree
#
#func _idle(_delta):
#	assert(Engine.get_version_info().major == 3)
#	# print_debug("root is Window in Godot 3")
#
#func _process(_delta):
#	assert(Engine.get_version_info().major == 4)
#	root.title = "MyScene 4.x" # root is Window in Godot 4
#	# root.set("theme_override_colors/title_color", Color.yellow)
#
#func _initialize():
#	print_debug("_initialize")
#
#func _finalize():
#	print_debug("_finalize")
#
#func _init():
#	print_debug("SceneTree _init")
#	var main = MyNode.new()
#	main.name = "Main"
#	root.add_child(main)
#
#	# wait connection for few seconds
#	yield(create_timer(5.5), "timeout")
#	quit()

# ---------------------------------------------------------------------------- #
class_name MyNode2D

extends Node

var peer = NetworkedMultiplayerENet.new()
var mapi = MultiplayerAPI.new()

func _ready():
	if "--server" in OS.get_cmdline_args():
		start_enet()
	else:
		start_enet(false)

	# Cause error: 
	# Invalid set index 'multiplayer' with value of type 'MultiplayerAPI'.
	# multiplayer.network_peer = peer
	# suggested to resetting the network peer before disconnect or reconnect.
	set_custom_multiplayer(mapi)
	multiplayer.set_network_peer(peer)
	get_tree().set_network_peer(peer)

	mapi.set_root_node(get_tree().root)
	# This line will cause rpc miss test()
	# mapi.set_root_node(self)

	# RPC configuration: Node.rpc_config() or Node.rset_config()
	# This config equals to "sync func test()"
	# rpc_config("test", MultiplayerAPI.RPC_MODE_SYNC)

	mapi.connect("connected_to_server", self, "on_mapi_connected_to_server")
	mapi.connect("connection_failed", self, "on_mapi_connection_failed")
	mapi.connect("network_peer_connected", self, "on_mapi_network_peer_connected")
	mapi.connect("network_peer_disconnected", self, "on_mapi_network_peer_disconnected")
	mapi.connect("network_peer_packet", self, "on_mapi_network_peer_packet")
	mapi.connect("server_disconnected", self, "on_mapi_server_disconnected")

	peer.connect("connection_failed", self, "on_peer_connection_failed")
	peer.connect("connection_succeeded", self, "on_peer_connection_succeeded")
	peer.connect("peer_connected", self, "on_peer_peer_connected")
	peer.connect("peer_disconnected", self, "on_peer_peer_disconnected")
	peer.connect("server_disconnected", self, "on_peer_server_disconnected")

func _input(event):
	if not event is InputEventKey:
		return
	match [ event.is_pressed(), event.scancode ]:
		[true, KEY_SPACE]:
			print_debug("rpc test: ", event.scancode)
			rpc("test", event.scancode)
			print_debug("test send. --------------------------------------")
			
		[true, KEY_ESCAPE]:
			get_tree().quit()


func _process(delta):
	# Poll the custom MultiplayerAPI so it 
	# fetches packets, emit signals, process RPCs
	# mapi.poll()
	multiplayer.poll()


func start_enet(server = true):
	var PORT = 4567
	var HOST = "localhost"
	if server:
		var err = peer.create_server(PORT)
		if OK != err:
			print_debug("Can't create an ENet server %s:%d" % [HOST, PORT])
			return
	else:
		var err = peer.create_client(HOST, PORT)
		if OK != err:
			print_debug("Can't create an ENet client %s:%d" % [HOST, PORT])
			return
	peer.connect("peer_connected", self, "send_test")
	print_debug("start %s on %s:%d" % ["server" if server else "client", HOST, PORT])
	print_debug("     My unique peer id is: ", peer.get_unique_id())


# case GDScriptTokenizer::TK_PR_REMOTESYNC
# case GDScriptTokenizer::TK_PR_SYNC
remotesync func test(id):
	# SceneTree get_rpc_sender_id() always return 0 in Godot 3.5
	print_debug("          peer rpc tested: ", id, " ============")
	print_debug("     SceneTree rpc sender: ", get_tree().get_rpc_sender_id())
	print_debug("MultiplayerAPI rpc sender: ", multiplayer.get_rpc_sender_id())
	assert(multiplayer.get_network_unique_id() == peer.get_unique_id())

func send_test(id):
	print_debug(" peer connected, rpc test: ", id, " ++++++++++++")
	print_debug("     SceneTree rpc sender: ", get_tree().get_rpc_sender_id())
	print_debug("MultiplayerAPI rpc sender: ", multiplayer.get_rpc_sender_id())

	# delay to avoid error at: (core/io/multiplayer_api.cpp:203)
	yield(get_tree().create_timer(1.515), "timeout")
	# execute on server
	if get_network_master() == 1:
		rpc("test", peer.get_unique_id())
		print_debug("test send. --------------------------------------")



func on_mapi_connected_to_server():
	print_debug("MultiplayerAPI connected_to_server")


func on_mapi_connection_failed():
	print_debug("MultiplayerAPI connection_failed")


func on_mapi_network_peer_connected(id: int):
	print_debug("MultiplayerAPI network_peer_connected ", id)


func on_mapi_network_peer_disconnected(id: int):
	print_debug("MultiplayerAPI network_peer_disconnected ", id)


func on_mapi_network_peer_packet(id: int, packet: PoolByteArray):
	print_debug("MultiplayerAPI network_peer_packet", id, packet)


func on_mapi_server_disconnected():
	print_debug("MultiplayerAPI server_disconnected")



func on_peer_connection_failed():
	print_debug("       ENetPeer connection_failed")


func on_peer_connection_succeeded():
	print_debug("       ENetPeer connection_succeeded")


func on_peer_peer_connected(id: int):
	# multiplayer authority is this host itself
	set_network_master(peer.get_unique_id())
	# This one is tricky, it will be changeable
	# set_network_master(id)
	print_debug("       ENetPeer peer_connected ", id)


func on_peer_peer_disconnected(id: int):
	print_debug("       ENetPeer peer_disconnected ", id)


func on_peer_server_disconnected():
	print_debug("       ENetPeer server_disconnected")

