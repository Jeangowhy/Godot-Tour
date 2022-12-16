extends Node

onready var aniplayer:AnimationPlayer = $"%AnimationPlayer"
onready var sprite = $"."
onready var player = $".."

func _ready():
	#aniplayer.current_animation = "fog jump"
	#aniplayer.play("fog jump")
	aniplayer.play("jump_left_aniplayer")

func _on_AnimationPlayer_animation_started(anim_name):
	#print("AnimationPlayer start ", anim_name)
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	#print("AnimationPlayer finished ", anim_name)
	if anim_name == "jump_left_aniplayer":
		player.position.x -= 37 # hard code root motion
	if anim_name == "jump_right_aniplayer":
		player.position.x += 59  # hard code root motion
	
	if player.position.x > get_viewport().size.x - 40:
		aniplayer.play("jump_left_aniplayer")
	elif player.position.x < 40:
		aniplayer.play("jump_right_aniplayer")
	else:
		aniplayer.play("jump_%st_aniplayer" % ["lef","righ"][randi()%2])


