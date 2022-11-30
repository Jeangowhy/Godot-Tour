tool
extends Control

# When reactived plugin cause error:
# Autoload singleton 'MyPluginAutoload' has been removed.
#onready var ap:EditorPlugin = MyPluginAutoload
onready var plugin:EditorPlugin = EditorPlugin.new()
onready var panel:Node = load("res://addons/main_screen/main.tscn").instance()

enum Location { NoneSet = 0, DockSlot= 1, Toolbar = 2, BottomPanel = 3 }
var location

func _exit_tree():
	if panel:
		detach()
		#panel.queue_free()
		print("panel ", panel)

func _enter_tree():
	print("MyPlugin")

func detach():
	if not panel.get_parent():
		return
	
	#panel.get_parent().remove_child(panel)
	match location:
		Location.DockSlot:
			plugin.remove_control_from_docks(panel)
		Location.BottomPanel:
			plugin.remove_control_from_bottom_panel(panel)
		Location.Toolbar:
			plugin.remove_control_from_container(EditorPlugin.CONTAINER_TOOLBAR, panel)

func _on_Button_pressed():
	detach()
	location = Location.BottomPanel
	plugin.add_control_to_bottom_panel(panel, "MyPlugin")


func _on_Button2_pressed():
	detach()
	location = Location.DockSlot
	plugin.add_control_to_dock(EditorPlugin.DOCK_SLOT_LEFT_BR, panel)


func _on_Button3_pressed():
	detach()
	location = Location.Toolbar
	plugin.add_control_to_container(EditorPlugin.CONTAINER_TOOLBAR, panel)
	
