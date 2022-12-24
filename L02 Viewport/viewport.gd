extends Control

func wait():
	var r =  "w"
	print("value yield: ", r)
	
func _ready():
	$"%Label".text += "\nTransforms: global %s\n canvas %s\n viewport %s" %[
			get_global_transform(), 
			get_canvas_transform(), 
			get_viewport_transform()]
	print($"%Label".text)
	
func _input(event):
	if event is InputEventMouseMotion:
		var mouse = event as InputEventMouseMotion
		$"%Label".text = "pos %s, loc %s, glo %s" % [mouse.position, get_local_mouse_position(), get_global_mouse_position()]
		mouse = make_input_local(event) as InputEventMouseMotion
		$"%Label".text += "\nmake_input_local: pos %s, loc %s, glo %s" % [mouse.position, get_local_mouse_position(), get_global_mouse_position()]
		var screen_coord = get_viewport_transform() * (get_global_transform() * mouse.position)
		$"%Label".text += "\nScreen coordinate %s" % [screen_coord]
		
