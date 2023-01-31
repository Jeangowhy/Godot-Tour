extends Node2D

@onready var player = $".."

var base = 60
var sprint = 0

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("move_sprint"):
		get_viewport().set_input_as_handled()
		sprint = base * 2
	else:
		sprint = 0

func _process(delta):
	var anitree = %AnimationTree
	var current_path = "parameters/Transition/current"
#	var trans = anitree.get("parameters/Transition") got nothing
	var current = anitree.get(current_path)
	if Input.is_action_just_pressed("move_left"):
		get_viewport().set_input_as_handled()
		anitree.set(current_path, 0)
	elif Input.is_action_just_pressed("move_right"):
		get_viewport().set_input_as_handled()
		anitree.set(current_path, 1)
	elif Input.is_action_pressed("move_up"):
		get_viewport().set_input_as_handled()
	elif Input.is_action_pressed("move_down"):
		get_viewport().set_input_as_handled()

#func _axis_simulate(delta):
#	if Input.is_action_just_pressed("move_down"):
#		print("move_down")
#
#	# Simualte X axis by keyboard
#	if Input.is_action_pressed("move_right"):
#		player.position.x += (base + sprint) * delta
#	elif Input.is_action_pressed("move_left"):
#		player.position.x -= (base + sprint) * delta
#
#	# Simualte Y axis by keyboard
#	if Input.is_action_pressed("move_down"):
#		player.position.y += (base + sprint) * delta
#	elif Input.is_action_pressed("move_up"):
#		player.position.y -= (base  + sprint) * delta
#
#func _process_axis(delta):
#	#Input.get_action_strength("move_up")
#	var axis_y = Input.get_axis("move_up", "move_down")
#	var axis_x = Input.get_axis("move_left", "move_right")
#	var velocity = Vector2(axis_x * (base + sprint), axis_y * (base + sprint))
#	if Input.is_action_just_released("move_sprint"):
#		print("speed [%d, %d] %s" % [axis_x, axis_y, velocity])
#	# This is a shorthand for writing 
#	# Input.get_action_strength("positive_action") - Input.get_action_strength("negative_action").
#	player.position += velocity * delta
