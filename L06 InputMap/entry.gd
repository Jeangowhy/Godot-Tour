extends Node2D

@onready var up: = $PanelContainer/HSplitContainer/GridContainer/move_up
@onready var down: = $PanelContainer/HSplitContainer/GridContainer/move_down
@onready var left: = $PanelContainer/HSplitContainer/GridContainer/move_left
@onready var right: = $PanelContainer/HSplitContainer/GridContainer/move_right
@onready var list = %ItemList
@onready var list2 = %ItemList2

var current_act = null

func get_key(event:InputEventKey):
#	var key = OS.get_scancode_string(event.get_keycode_with_modifiers())
	var key = OS.get_keycode_string(event.physical_keycode)
	return key if key else OS.get_keycode_string(event.keycode)

func get_button_name(raw_name:String):
	var name = raw_name.split("_")[1]
	assert(name != null)
	return name.capitalize()

func reset_button():
	if current_act != null:
		var event = InputMap.action_get_events(current_act.name)[0]
		var key = ""
		if event is InputEventKey:
			key = get_key(event)
		elif event is InputEventJoypadButton or event is InputEventMouseButton:
			key = event.button_index
		current_act.text = "%s(%s)" % [get_button_name(current_act.name), key]
		current_act = null
	
func _ready():
	up.connect("pressed", _on_pressed.bind(up))
	down.connect("pressed", _on_pressed.bind(down))
	left.connect("pressed", _on_pressed.bind(left))
	right.connect("pressed", _on_pressed.bind(right))
	set_process_unhandled_input(false)
	set_process_unhandled_key_input(false)
	
	for act in InputMap.get_actions():
		list.add_item(act)

func _on_pressed(button:Button):
	set_process_unhandled_input(true)
	set_process_unhandled_key_input(true)
	reset_button()
	current_act = button
	button.text = "%s(...)" % get_button_name(button.name)

func _unhandled_input(event):
	# joypad and mouse, button and motion...
	print("unhandled input", event)
	if not current_act:
		return
	if event is InputEventJoypadButton or event is InputEventMouseButton:
		InputMap.action_erase_events(current_act.name)
		InputMap.action_add_event(current_act.name, event)
		set_process_unhandled_input(false)
		reset_button()

func _unhandled_key_input(event: InputEvent):
	print("unhandled key input", event)
	if Input.is_key_pressed(KEY_ESCAPE):
		return reset_button()
	if current_act:
		InputMap.action_erase_events(current_act.name)
		InputMap.action_add_event(current_act.name, event)
	set_process_unhandled_key_input(false)
	reset_button()

func _on_item_list_item_selected(index):
	var act = list.get_item_text(index)
	list2.clear()
	for event in InputMap.action_get_events(act):
		list2.add_item(event.to_string())
