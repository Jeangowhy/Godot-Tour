extends Node

class_name GlobalNS

export var text:String = """
Global Scope
- @GDScript
- @GlobalScope
- Singletons (AutoLoad) via project settings
""" 

func _init():
	print("Global.gd _init")
	# Center window on screen
	var screen_size = OS.get_screen_size(OS.get_current_screen())
	var window_size = OS.get_window_size()
	var centered_pos = (screen_size - window_size) / 2
#	OS.set_window_position(centered_pos)
