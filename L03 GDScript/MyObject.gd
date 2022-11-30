extends "res://L03 GDScript/MySprite.gd"

#extends MySprite

class_name MyObject, 'res://icon.png'

func _ready():
	# Anonymous types: local script as GDScript class
	var MyClass = load("res://L03 GDScript/MySprite.gd")
	var instance = MyClass.new()
	assert(instance.get_script() == MyClass)
	
	# attach scene tree
	instance.position += Vector2(100, 100)
	instance.texture = load("icon.png")
	get_node("..").call_deferred("add_child", instance)

func _init(arg):
	print("MyObject _init(\"%s\")" % arg)
