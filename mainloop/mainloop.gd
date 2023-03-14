#!/usr/bin/env -S godot -s
class_name MyMainLoop
extends SceneTree

var _loaded = {
    _iteration = false,
    _idle = false,
    _physics_process = false,
    _process = false,
}

func _init():
    print_debug("step 1: _init")

    # preload("scene.gd").new().queue_free()
    # print_debug((preload("scene.gd") as GDScript).source_code)
    # MySceneNode.new().queue_free()

    var main = Node.new()
    main.set_script(preload("scene4.gd"))
    # var main = preload("scene4.gd").new()
    main.name = "Main"
    root.add_child(main)

    # wait connection for few seconds then quit.
    # This may cause WARNING: ObjectDB instances leaked at exit
    await create_timer(57.5).timeout
    quit() # exit command: godot --headless --script scenetree.gd

func _iteration(delta):
    if !_loaded._iteration:
        _loaded._iteration = true
        assert(Engine.get_version_info().major == 3)
        print_debug("step 3: _iteration (Node._physics_process)")

func _idle(delta):
    if !_loaded._idle:
        _loaded._idle = true
        assert(Engine.get_version_info().major == 3)
        print_debug("step 3: _idle (Node._process)")

func _physics_process(delta):
    if !_loaded._physics_process:
        _loaded._physics_process = true
        assert(Engine.get_version_info().major == 4)
        root.title = "MyScene 4.x" # root is Window in Godot 4
        #root.set("theme_override_colors/title_color", Color.YELLOW)
        print_debug("step 3: _physics_process")

func _process(delta):
    if !_loaded._process:
        _loaded._process = true
        assert(Engine.get_version_info().major == 4)
        print_debug("step 4: _process")

func _initialize():
    print_debug("step 2: _initialize")

func _finalize():
    print_debug("step 5: _finalize")