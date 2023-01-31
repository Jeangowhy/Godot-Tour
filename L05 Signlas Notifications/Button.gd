extends Button

# "one" is an "initialized value". These DO NOT trigger the setter.
# If someone set the value as "two" from the Inspector, this would be an
# "exported value". These DO trigger the setter.
@export var test = "one":
	set(value):
		test = value
		print("Setting: ", test)

func _ready():
	$"..".connect("SignalReceived", _on_feedback)
	$"..".connect("SignalQueueFree", _on_free)

func _on_feedback(count:int):
	var tween = create_tween()
	tween.tween_interval(1)
	tween.tween_callback(_update_log.bind(count))
	
func _update_log(count:int):
	self.text = "count %s" % (count)

func _on_free():
	%note.text = String(self.name) + " queue free!"
	self.queue_free()


func _init():
	# "three" is an "init assignment value".
	# These DO NOT trigger the setter, but...
	test = "three"
	# These DO trigger the setter. Note the `self` prefix.
	self.test = "three2"


func _notification(what):
	match what:
		NOTIFICATION_PARENTED:
			print("Node::NOTIFICATION_PARENTED")
		NOTIFICATION_UNPARENTED:
			print("Node::NOTIFICATION_UNPARENTED")

