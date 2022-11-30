tool

class_name MyTitle, "res://icon.png" extends Label

export var resource: Resource setget set_resource
export var ResourceInfo:String

## Auto Refresh inspector property list
export var AutoRefresh:bool = true

func set_resource(res: Resource):
	resource = res
	ResourceInfo = res.resource_path if res else ""
	
	if res is Texture:
		var tr = ClassDB.instance("TextureRect") # TextureRect.new()
		tr.texture = res
		for child in get_children():
			remove_child(child)
		add_child(tr)
	
	if AutoRefresh:
		.property_list_changed_notify()
	
func _ready():
	if Engine.editor_hint and not text:
		text = "MyTitle"
		rect_min_size = Vector2(ProjectSettings.get("display/window/size/width"), 64)
	# else:
	#	rect_min_size = Vector2(get_tree().root.size.x, 64)

func _init():
	#print("title init ", text)
	set("align", ALIGN_CENTER)
	set("valign", ALIGN_CENTER)
	set("custom_colors/font_size", Color.whitesmoke)
	set("custom_colors/font_color", Color.whitesmoke)
	set("custom_colors/font_color_shadow", Color.darkorange)
	set("custom_constants/shadow_offset_x", 2)
	set("custom_constants/shadow_offset_y", 2)
	set("custom_constants/shadow_offset_y", 2)
	
	theme = load("res://L07 UI/theme.tres")
	theme_type_variation = "MyLabel"
	


