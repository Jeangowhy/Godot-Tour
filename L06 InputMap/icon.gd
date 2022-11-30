extends Node2D

onready var icon = $"."

var base = 60
var sprint = 0

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("move_sprint"):
		sprint = base * 2
	else:
		sprint = 0

func _axis_simulate(delta):
	if Input.is_action_just_pressed("move_down"):
		print("move_down")
	
	# Simualte X axis by keyboard
	if Input.is_action_pressed("move_right"):
		icon.position.x += (base + sprint) * delta
	elif Input.is_action_pressed("move_left"):
		icon.position.x -= (base + sprint) * delta
	
	# Simualte Y axis by keyboard
	if Input.is_action_pressed("move_down"):
		icon.position.y += (base + sprint) * delta
	elif Input.is_action_pressed("move_up"):
		icon.position.y -= (base  + sprint) * delta

func _process(delta):
	#Input.get_action_strength("move_up")
	var axis_y = Input.get_axis("move_up", "move_down")
	var axis_x = Input.get_axis("move_left", "move_right")
	var velocity = Vector2(axis_x * (base + sprint), axis_y * (base + sprint))
	if Input.is_action_just_released("move_sprint"):
		print("speed [%d, %d] %s" % [axis_x, axis_y, velocity])
	# This is a shorthand for writing 
	# Input.get_action_strength("positive_action") - Input.get_action_strength("negative_action").
	icon.position += velocity * delta

func _process_tree(delta):
	var anitree = $"../../AnimationTree"
	var trans = anitree.get("parameters/Transition")
	var current = anitree.get("parameters/Transition/current")
	if Input.is_action_just_pressed("move_left"):
		anitree.set("parameters/Transition/current", 0)
	elif Input.is_action_just_pressed("move_right"):
		anitree.set("parameters/Transition/current", 1)
	print("transition ", trans, current)

#func _unhandled_input(event):
#	print("unhandled input", event)
#
#func _unhandled_key_input(event):
#	print("unhandled key input", event)
