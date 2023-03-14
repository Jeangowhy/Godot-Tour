class_name MyNode

extends Node

var peer = ENetMultiplayerPeer.new()
var mapi = SceneMultiplayer.new()
var last_peer = 0
var can_repeat = false


func _ready():
    Engine.set_physics_ticks_per_second(5)

    if "--server" in OS.get_cmdline_args():
        start_enet()
    elif "--client" in OS.get_cmdline_args():
        start_enet(false)

    # Custom MultiplayerAPI
    #get_tree().set_multiplayer(mapi, self.get_path())

    # Authentication API
    # multiplayer.auth_callback = auth_callback
    multiplayer.set_auth_callback(auth_callback)


    # var mapi = multiplayer # it's read-only
    mapi.connected_to_server.connect(on_mapi_connected_to_server)
    mapi.connection_failed.connect(on_mapi_connection_failed)
    mapi.server_disconnected.connect(on_mapi_server_disconnected)
    mapi.peer_connected.connect(on_mapi_peer_connected)
    mapi.peer_disconnected.connect(on_mapi_peer_disconnected)

    mapi.peer_packet.connect(on_mapi_peer_packet)
    mapi.peer_authentication_failed.connect(on_mapi_peer_authentication_failed)
    mapi.peer_authenticating.connect(on_mapi_peer_authenticating)

    peer.peer_disconnected.connect(on_peer_peer_disconnected)
    peer.peer_connected.connect(on_peer_peer_connected)


func _physics_process(delta):
    if !can_repeat or MultiplayerPeer.CONNECTION_CONNECTED != peer.get_connection_status():
        return
    if get_tree().is_multiplayer_poll_enabled():
        rpc("test", Time.get_ticks_msec())


func _input(event):
    if not event is InputEventKey:
        return

    match [ event.is_pressed(), event.keycode ]:
        [true, KEY_SPACE]:
            if get_tree().is_multiplayer_poll_enabled():
                print_debug(" rpc test: -------------------------------")
                rpc("test", event.keycode)
        [true, KEY_P]:
            can_repeat = !can_repeat
        [true, KEY_C]:
            start_enet(false)
        [true, KEY_S]:
            start_enet()
        [true, KEY_B]:
            try_send_bytes()
        [true, KEY_X]:
            get_tree().set_multiplayer_poll_enabled(false)
            peer.close()
        [true, KEY_Q], [true, KEY_ESCAPE]:
            get_tree().quit()
            peer = null
            mapi = null


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
    print_debug("start %s on %s:%d" % ["server" if server else "client", HOST, PORT])
    print_debug("     My unique peer id is: ", peer.get_unique_id())

    multiplayer.multiplayer_peer = peer
    get_tree().set_multiplayer_poll_enabled(true)
    # get_tree().set_multiplayer(mapi)


func try_send_bytes():
    if not get_tree().is_multiplayer_poll_enabled():
        return
    # send data to cause network_peer_packet signal
    var data = PackedByteArray(range(10))
    # this line has no effect!
    # peer.set_target_peer(ENetMultiplayerPeer.TARGET_PEER_SERVER)
    var err = multiplayer.send_bytes(data, last_peer)
    var from = peer.get_packet_peer()
    var datas = [data.slice(0,9), last_peer, from, last_peer]
    print_debug("send_bytes(%s, %d): %d -> %d " % datas)


@rpc("any_peer", "call_remote")
func test(id):
    var sid = multiplayer.get_remote_sender_id();
    print_debug("test(%d) --------------------------" % [id])
    print_debug("         MultiplayerAPI rpc sender: ", sid)
    assert(multiplayer.get_unique_id() == peer.get_unique_id())

# ---------------------------------------------------------------------------- #

func auth_callback(id: int, data: PackedByteArray):
    print_debug("                     auth_callback: %d <- %s"%[id,data])
    multiplayer.complete_auth(id)

func on_mapi_peer_authentication_failed(id: int):
    print_debug("on_mapi_peer_authentication_failed: %d" % [id])

func on_mapi_peer_authenticating(id: int):
    print_debug("       on_mapi_peer_authenticating: %d" % [id])
    var data = "some proves...".to_utf8_buffer()
    print_debug("               peer_authenticating: %d with %s", [id, data])
    multiplayer.send_auth(id, data)

# ---------------------------------------------------------------------------- #

func on_peer_peer_disconnected(id: int):
    print_debug("                 peer_disconnected: ", id)
    if id == 1: # server_disconnected
        get_tree().set_multiplayer_poll_enabled(false)
        multiplayer.multiplayer_peer = null
        peer.close()
func on_peer_peer_connected(id: int):
    var sid = multiplayer.get_remote_sender_id();
    print_debug("+++++++++++++++++++ peer_connected: ", id)
    print_debug("         MultiplayerAPI rpc sender: ", sid)


func on_mapi_connected_to_server():
    print_debug("       on_mapi_connected_to_server:")
func on_mapi_connection_failed():
    print_debug("         on_mapi_connection_failed:")
func on_mapi_server_disconnected():
    print_debug("       on_mapi_server_disconnected:")
func on_mapi_peer_connected(id: int):
    print_debug("            on_mapi_peer_connected: %d" % [id])
    last_peer = id
func on_mapi_peer_disconnected(id: int):
    print_debug("         on_mapi_peer_disconnected: %d" % [id])
func on_mapi_peer_packet(id: int, packet: PackedByteArray):
    var me = multiplayer.get_unique_id()
    print_debug("               on_mapi_peer_packet: %d -> %d " % [id, me], packet)
