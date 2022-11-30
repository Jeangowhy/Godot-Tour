tool
extends Circle

onready var animation_tree = $"%AnimationTree"
# AnimationNodeStateMachinePlayback
onready var state_play = animation_tree.get("parameters/StateMachine/playback")

func _ready():
	connect("circle_hit", self, "_on_circle_hit")


func _input(event):
	if event.is_action_pressed("move_left"):
		state_play.start("Jump to Left")
	elif event.is_action_pressed("move_right"):
		state_play.travel("Jump to Right")
#	elif not state_play.is_playing():
#		state_play.start("RESET")
#	else:
#		state_play.stop()
#	print("is playing ", state_play.is_playing())

func _process(delta):
	var motion:Transform = animation_tree.get_root_motion_transform()
#	transform = motion.xform()
#	if motion.position:
#		print("root motion ", motion)
	
func _on_circle_hit(mouse):
	if not state_play:
		return
	if mouse.button_index == BUTTON_LEFT:
		state_play.start("Jump to Left")
	elif mouse.button_index == BUTTON_RIGHT:
		state_play.travel("Jump to Right")
	print("travel path: ", state_play.get_travel_path())


func _on_AnimationPlayer_animation_changed(old_name, new_name):
	print("animation_changed %s -> %s" %[old_name, new_name])
	pass # Replace with function body.
