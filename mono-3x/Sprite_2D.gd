extends Sprite

onready var node_2d = $".."

func _ready():
	var MyNode2D = load("res://MyNode2D.cs") # CSharpScript
	var csnode = MyNode2D.new()
	print("MyNode2D instance ", csnode, csnode is Node2D)
	
	csnode.SayHelloTo("CSharp")
	node_2d.SayHelloTo("MyNode2D")
	
	#node_2d.connect(node_2d.MySignal, self, "_say_hello")
	node_2d.connect("MySignal", self, "_say_hello", ["C# Signal"])
	node_2d.connect("MySignalWithArgument", self, "_say_hello")

func _say_hello(name: String):
	print("Hello to Sprite: %s!" % name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
