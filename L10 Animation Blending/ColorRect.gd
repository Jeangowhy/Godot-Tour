extends ColorRect

onready var animated_sprite = $AnimatedSprite

func _ready():
	pass

func _on_AnimatedSprite_animation_finished():
	animated_sprite.pause_mode = true


func _on_ColorRect_gui_input(event):
	if event is InputEventMouseButton and event.is_pressed():
		var ans = animated_sprite.frames.get_animation_names()
		var idx = ans.find(animated_sprite.animation)
		idx = (idx + 1) % ans.size()
		animated_sprite.play(ans[idx])

