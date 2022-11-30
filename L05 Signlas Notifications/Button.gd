extends Button

func _ready():
	$"..".connect("SignalReceived", self, "_on_feedback", [], CONNECT_PERSIST)

func _on_feedback(count:int):
	var tween = create_tween()
	tween.tween_interval(1)
	tween.tween_callback(self, "_update_log", [count])
	
func _update_log(count:int):
	self.text = "count %s" % (count)
	self.queue_free()

# "one" is an "initialized value". These DO NOT trigger the setter.
# If someone set the value as "two" from the Inspector, this would be an
# "exported value". These DO trigger the setter.
export(String) var test = "one" setget set_test

func _init():
	# "three" is an "init assignment value".
	# These DO NOT trigger the setter, but...
	test = "three"
	# These DO trigger the setter. Note the `self` prefix.
	self.test = "three2"

func set_test(value):
	test = value
	print("Setting: ", test)

func _notification(what):
	match what:
		NOTIFICATION_PARENTED:
			print("Node::NOTIFICATION_PARENTED")
		NOTIFICATION_UNPARENTED:
			print("Node::NOTIFICATION_UNPARENTED")

