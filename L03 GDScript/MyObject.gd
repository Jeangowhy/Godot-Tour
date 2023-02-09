extends Object
#extends MyObject.InnerClass.NestedClass 
# Godot 4.x GDScript can extends inner class in the same gd file.
# Default extends: RefCounted in Godot 4.x or Reference in Godot 3.x
#extends MySprite
#extends "res://L03 GDScript/MySprite.gd"
#extends "res://L03 GDScript/MySprite.gd".some_innerclass

class_name MyObject, 'res://icon.png'

# MyObject' constructor
#func _init(seq = 0).(arguments for super):
func _init(seq = 0):
	#super(seq+1) # super is a keyword of Godot 4
	print("MyObject init: %s" % seq)

# Inner class
class InnerClass:
	# InnerClass' constructor
	func _init(seq = 0):
		print("InnerClass init: %s" % seq)

	class NestedClass:
		extends Object
		func _init(seq = 0):
			# Calls the method on the object during idle time. 
			self.call_deferred("_delay_4_idle", "call deferred not for RefCounted!")
			print("NestedClass init: %s" % seq)
		
		func _delay_4_idle(seq):
			print("NestedClass _delay_4_idle: %s" % seq)
