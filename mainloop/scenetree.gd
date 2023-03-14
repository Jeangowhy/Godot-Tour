#!/usr/bin/env -S godot -s
class_name MyScene
extends SceneTree

func _init():
    print_debug("step 1: _init")
    quit() # exit command: godot --headless --script scenetree.gd

func _iteration(delta):
    assert(Engine.get_version_info().major == 3)
    print_debug("step 3: _iteration (Node._physics_process)")

func _idle(delta):
    assert(Engine.get_version_info().major == 3)
    print_debug("step 3: _idle (Node._process)")

func _physics_process(delta):
    assert(Engine.get_version_info().major == 4)
    root.title = "MyScene 4.x" # root is Window in Godot 4
    #root.set("theme_override_colors/title_color", Color.YELLOW)
    print_debug("step 3: _physics_process")

func _process(delta):
    assert(Engine.get_version_info().major == 4)
    print_debug("step 4: _process")

func _initialize():
    print_debug("step 2: _initialize")

func _finalize():
    print_debug("step 5: _finalize")


# class MyResourceLoader:

#     var queue = []
#     var resources = {}
#     var state = IDLE

#     enum { IDLE, LOADING, FINISHED, COMPLETED, FAILED}

#     signal completed (Resource)

#     func _init():
#         pass

#     func load(String path):
#         var rn = MyRecord.new(path)
#         var record = resources[rn.hash]
#         if record and record.state == COMPLETED:
#             completed.emit(record)
#         elif record and record.state == FAILED:
#             failed.emit(record)

#         if not record:
#             queue.append(rn)

#         if not loading:
#             await process()

#     func process():
#          if queue.size():

# class MyRecord:
#     var path = ""
#     var hash = ""
#     var state = MyResourceLoader.IDLE
#     var resource = null

#     func _init(path, resource = null):
#         self.path = path
#         self.hash = path.hash()