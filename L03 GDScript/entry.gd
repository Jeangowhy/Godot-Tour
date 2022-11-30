tool

# BasicScene defined in L0 Basic Guide/entry.gd
extends BasicScene

# (optional) class definition with a custom icon
class_name SceneL3, "res://icon.png"

const tscn = preload("res://L0 Basic Guide/entry.tscn") # class PackedScene
const gd   = preload("res://L0 Basic Guide/entry.gd")   # class GDScript

export var LabelText:String setget label
export var Activated:bool = false setget activated

# Use EditorPlugin in Editor Mode
var editor:EditorInterface

func _ready():
	
	if Engine.editor_hint:
		#editor = ClassDB.instance("EditorPlugin").get_editor_interface()
		editor = EditorPlugin.new().get_editor_interface()
		var _view = editor.get_editor_viewport() # main editor control
		#_view.connect("gui_input", self, '_on_gui_input')
		activated(Activated)
		
	print("basic scene ", tscn, tscn.instance())
	print("basic script ", gd, gd.new())
	
	MyObject.new("argument pass to _init()")

	var scene = get_tree().current_scene
	print(self, " current_scene ", scene, " is instacne of gd? ", self is gd)

	print("note ", Something.new().note)
	print("NOTE ", Something.NOTE)
	print("enum ", Something.UNIT_ALLY, Something.Named.ANOTHER_THING)
	
	# String get_class() const
	# ClassDB.get_class() --> "_ClassDB"
	# scenetree.get_class() --> "SceneTree"
	# ClassDB.get_class_list()
	print("self class: %s [%s]" % [self.get_class(), self.is_class("Node2D")])


func _on_gui_input(event:InputEvent):
	print("gui input:", event)
	
	
func _enter_tree():
	print("enter, state ", Activated)


func _on_node_added(node:Node):
	if node is Label:
		print("_on_node_added %s (%s)" % [node, node.text])


func attach_to_scenetree():
	var selection = editor.get_selection()
	var nodes = selection.get_selected_nodes()
	var sceneroot = editor.get_edited_scene_root()
	var root = editor.get_tree().root  # Top most level viewport $"/root"
	print("root nodes: ", root, ", ", sceneroot, ", ", nodes)
	print("scene tree: ", editor.get_tree(), ", ", get_tree())
	if not nodes.size():
		return
	print("node owner is ", nodes[0].owner)
	
	var label = ClassDB.instance("Label") # Label.new()
	label.text = LabelText
	nodes[0].add_child(label)
	label.owner = nodes[0].owner if nodes[0].owner else nodes[0]
	
	#yield(editor.get_tree(), "idle_frame")
	#call_deferred("add_child", label)

func activated(state: bool):
	Activated = state
	if not editor:
		return
	var selection = editor.get_selection()
	if Activated and not selection.is_connected("selection_changed", self, "attach_to_scenetree"):
		selection.connect("selection_changed", self, "attach_to_scenetree")
		get_tree().connect("node_added", self, "_on_node_added", [], CONNECT_ONESHOT)
	else:
		if selection.is_connected("selection_changed", self, "attach_to_scenetree"):
			selection.disconnect("selection_changed", self, "attach_to_scenetree")
		if get_tree().is_connected("node_added", self, "_on_node_added"):
			get_tree().disconnect("node_added", self, "_on_node_added")


func label(text):
	LabelText = text

# Inner class

class Something:
	# Member variables
	var note = "This is InnerClass."

	# Constants
	const NOTE = "This is a constant."

	# Enums
	enum { UNIT_NEUTRAL, UNIT_ENEMY, UNIT_ALLY}
	enum Named {THING_1, THING_2, ANOTHER_THING = -1}
