extends Button

@onready var list = %ItemList


func _enter_tree():
	print(self.name, " _enter_tree")
	if list != null:
		list.add_item(String(self.name) + " _enter_tree")

func _ready():
	print(self.name, " _ready")
	list.add_item(String(self.name) + " _ready")

func _exit_tree():
	print(self.name, " _exit_tree")
	list.add_item(String(self.name) + " _exit_tree")



func _on_Button_pressed():
	print(self.name, " pressed")
	list.add_item(String(self.name) + " pressed")
	
	scene_change()
	#self.queue_free()

func scene_change():
	# change sence
	var cover = load("res://L01 Scene Tree/cover.tscn")
	#get_tree().change_scene_to(cover)
	#get_tree().change_scene("res://L1 Scene Tree/cover.tscn")
	
	# sence as node
	var acover: Node2D = cover.instantiate()
	print("button: ",self)
	var child = acover.get_child(0) as Control
	#acover.position = get_local_mouse_position() 
	acover.position = (self as CanvasItem).get_global_mouse_position()  - child.size / 2
	get_node("/root").add_child(acover)
	list.add_item("Load a scene as a node")
	
	var tween:Tween = create_tween().set_trans(Tween.TRANS_ELASTIC)
	tween.tween_property(acover, "modulate", Color.RED, 2)
	tween.tween_callback(acover.queue_free)
	
