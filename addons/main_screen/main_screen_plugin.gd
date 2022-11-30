tool
extends EditorPlugin

var Panel = preload("res://addons/main_screen/main.tscn")
#const Panel = preload("res://addons/main_screen/main.tscn")

# Replace this value with a PascalCase autoload name, as per the GDScript style guide.
#const AUTOLOAD_NAME = "MyPluginAutoload"

var MainPanel:Node

func _enter_tree():
	MainPanel = Panel.instance()
	# Add the main panel to the editor's main viewport.
	get_editor_interface().get_editor_viewport().add_child(MainPanel)

	# Hide the main panel. Very much required.
	make_visible(false)

	# The autoload can be a scene or script file.
	#add_autoload_singleton(AUTOLOAD_NAME, "res://addons/main_screen/main_screen_plugin.gd")


func _exit_tree():
	#remove_autoload_singleton(AUTOLOAD_NAME)
	if MainPanel:
		MainPanel.queue_free()


func has_main_screen():
	return true

# If your plugin doesn't handle any node types, you can remove this method.
func handles(obj):
	#return obj is preload("res://addons/main_screen/handled_by_myself.gd")
	return true

func make_visible(visible):
	if MainPanel:
		MainPanel.visible = visible

func edit(object: Object):
	var label = Label.new()
	label.text = object.to_string()
	MainPanel.add_child(label)
	

func get_plugin_name():
	return "MainScreen Plugin"


func get_plugin_icon():
	# Must return some kind of Texture for the icon.
	return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")
