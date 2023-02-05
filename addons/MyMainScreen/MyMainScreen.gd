@tool
extends EditorPlugin

const Main = preload("res://addons/MyMainScreen/Main.tscn")
var mainscreen = Main.instantiate()
var label = mainscreen.get_node("Label")
var container = get_editor_interface().get_editor_main_screen()


func _enter_tree():
	_make_visible(false)
	container.add_child(mainscreen)

func _ready():
	#main_screen_changed.connect(handle_main_screen_changed)
	pass

func _exit_tree():
	container.remove_child(mainscreen)
	mainscreen.queue_free()

func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		print_debug("event: ", event)

func _has_main_screen():
	return true

func _make_visible(visible):
	mainscreen.visible = visible
	label.text = "mainscreen size: %s" % [mainscreen.size]

# Implement this function if your plugin edits a specific type of object (Resource or Node). 
# If you return true, then you will get the functions _edit() and _make_visible() called 
# when the editor requests them. If you have declared the methods _forward_canvas_gui_input() and 
# _forward_3d_gui_input() these will be called too.
func _handles(object):
	print_debug("handles MainScreen only: ", object)
	return object is MainScreen


# This function is used for plugins that edit specific object types (nodes or resources). 
# It requests the editor to edit the given object.
# object can be null if the plugin was editing an object, but there is no longer 
# any selected object handled by this plugin. It can be used to cleanup editing state.
func _edit(object):
	mainscreen.get_node("Label").text = "editing: %s" % [object]

# Custom plugin name displayed in the Godot editor.
# For main screen plugins, this appears at the top of the screen, 
# to the right of the "2D", "3D", "Script", and "AssetLib" buttons.
func _get_plugin_name():
	return "MS"

func _get_plugin_icon():
	# You can use a custom icon:
	return preload("res://addons/MyMainScreen/bullet_32.svg")
	# Or use a built-in icon:
	return get_editor_interface().get_base_control().get_theme_icon("Node", "EditorIcons")
