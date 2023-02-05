#extends MySprite
#extends "res://L03 GDScript/MySprite.gd"
#extends "res://L03 GDScript/MySprite.gd".some_innerclass

@icon('res://icon.png')

extends MyObject.InnerClass.NestedClass
# Default extends: RefCounted in Godot 4.x or Reference in Godot 3.x

class_name MyObject

# MyObject' constructor
func _init(seq):
	#super(seq+1)
	print("MyObject init: %s" % seq)

func _ready():
	# Anonymous types: local script as GDScript class
	var MyClass = load("res://L03 GDScript/MySprite.gd")
	var instance = MyClass.new()
	assert(instance.get_script() == MyClass)
	print("MyObject _ready")


# Inner class
class InnerClass:
	extends MyObject.InnerClass.NestedClass
	# InnerClass' constructor
	func _init(seq):
		super(seq + 1)
		print("InnerClass init: %s" % seq)

	class NestedClass:
		extends Node
		func _init(seq):
			# Calls the method on the object during idle time. 
			self.call_deferred("_delay_4_idle", "call deferred not for RefCounted!")
			print("NestedClass init: %s" % seq)
		
		func _delay_4_idle(seq):
			print("NestedClass _delay_4_idle: %s" % seq)
