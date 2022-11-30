extends CanvasItem

onready var list = $"/root/Node2D/ItemList"

func _enter_tree():
	print(self.name, " _enter_tree")
	if list != null:
		list.add_item(self.name + " _enter_tree")

func _ready():
	print(self.name, " _ready")
	list.add_item(self.name + " _ready")

func _exit_tree():
	print(self.name, " _exit_tree")
	list.add_item(self.name + " _exit_tree")

func _on_Button_pressed():
	print(self.name, " pressed")
	list.add_item(self.name + " pressed")
	
	scene_change()
	#self.queue_free()

func scene_change():
	# change sence
	var cover = load("res://L1 Scene Tree/cover.tscn")
	#get_tree().change_scene_to(cover)
	#get_tree().change_scene("res://L1 Scene Tree/cover.tscn")
	
	# sence as node
	var acover: Node2D = cover.instance()
	print("button: ",self)
	var child = acover.get_child(0) as Control
	#acover.position = get_local_mouse_position() 
	acover.position = get_global_mouse_position()  - child.rect_size / 2
	get_node("/root").add_child(acover)
	list.add_item("Load a scene as a node")
	
	var tween:SceneTreeTween = create_tween().set_trans(Tween.TRANS_ELASTIC)
	tween.tween_property(acover, "modulate", Color.red, 2)
	tween.tween_callback(acover, "queue_free")
	
