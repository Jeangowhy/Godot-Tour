extends Sprite2D

@onready var my_node_2d = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	my_node_2d.connect("MySignal", say_hello.bind("MySignal"))
	my_node_2d.connect("MySignalWithArgument", say_hello)


func say_hello(name: String):
	print("Sprite2D: Hello %s!" % name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

