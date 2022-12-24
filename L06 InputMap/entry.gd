extends Node2D

onready var up: = $PanelContainer/GridContainer/move_up
onready var down: = $PanelContainer/GridContainer/move_down
onready var left: = $PanelContainer/GridContainer/move_left
onready var right: = $PanelContainer/GridContainer/move_right

var remap:Button = null
var actions:Array = ["move_up", "move_right", "move_down", "move_left"]

func get_key(event:InputEventKey):
	var key = OS.get_scancode_string(event.get_scancode_with_modifiers())
	var code = event.scancode | event.physical_scancode
	var fallback = OS.get_scancode_string(code)
	return key if key else fallback

func get_button_name(raw_name):
	var name = remap.name.split("_")[1]
	assert(name != null)
	return name.capitalize()

func reset_button():
	if remap != null:
		var event = InputMap.get_action_list(remap.name)[0] as InputEventKey
		remap.text = "%s(%s)" % [get_button_name(remap.name), get_key(event)]
		remap = null
	
func _ready():
	up.connect("pressed", self, "_on_pressed", [up])
	down.connect("pressed", self, "_on_pressed", [down])
	left.connect("pressed", self, "_on_pressed", [left])
	right.connect("pressed", self, "_on_pressed", [right])
	init_actions()

func init_actions():
	for act in actions:
		if not InputMap.has_action(act):
			InputMap.add_action(act)
	print_all_actions()
	print_action_events("move_up")

func print_all_actions():
	print("all actions has defined: ", InputMap.get_actions())

func print_action_events(action):
	print("events for %s:" % action, InputMap.get_action_list(action))

func _on_pressed(button:Button):
	reset_button()
	remap = button
	remap.text = "%s(%s)" % [get_button_name(remap.name), "..."]
	print(button)
	# set_process_unhandled_key_input(true)

func _input(event):
	print("root node input: ", event)
	#get_tree().set_input_as_handled()
	
func _unhandled_key_input(event):
	if event.scancode == KEY_ESCAPE:
		reset_button()
	
	if remap != null:
		var action = remap.name
		InputMap.action_erase_events(action)
		InputMap.action_add_event(action, event)
		remap.text = "%s(%s)" % [get_button_name(remap.name), get_key(event)]
		remap = null
	# set_process_unhandled_key_input(false)
