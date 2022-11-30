extends Sprite
class_name MyAnimatedSprite

signal animation_finished

var timer:Timer = Timer.new()

export(int, 0, 120, 1) var FPS = 4
export(bool) var pause = false setget set_pause
export(bool) var loop = false
export(bool) var TextureMovtion = true setget set_TextureMovtion


func _enter_tree():
	timer.connect("timeout", self, "_on_Timer_timeout")
	add_child(timer)

func _ready():
	connect("animation_finished", self, "_on_animation_finished")
	set_animation()
	
func _input(event):
	if event.is_pressed() and event is InputEventMouseButton:
		var mouse = event as InputEventMouseButton
		var distance = position.distance_to(mouse.position)
		if distance > 32:
			return
		if mouse.button_index == BUTTON_LEFT:
			set_TextureMovtion(!TextureMovtion)
		else:
			set_pause(!pause)
	
	
func _on_Timer_timeout():
	var frames = hframes * vframes
	frame = (frame + 1) % frames 
	if frame == frames - 1:
		yield(get_tree(), "idle_frame") # wait next idle frame
		emit_signal("animation_finished")

func _on_animation_finished():
	if not loop:
		timer.stop()
	
func set_pause(state):
	pause = state
	set_animation()

func set_animation():
	if not pause and texture:
		timer.start(1.0 / FPS)
	else:
		timer.stop()

func set_TextureMovtion(state):
	TextureMovtion = state
	var at = texture as AnimatedTexture
	at.pause = !state
	property_list_changed_notify()
	
