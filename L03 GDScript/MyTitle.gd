@tool

@icon("res://icon.png")
class_name MyTitle extends Label

@export var resource: Resource :
	set(res):
		resource = res
		ResourceInfo = res.resource_path if res else ""
		
		if res is Texture:
			var tr = ClassDB.instantiate("TextureRect") # TextureRect.new()
			tr.texture = res
			for child in get_children():
				remove_child(child)
			add_child(tr)
		
		if AutoRefresh:
			#property_list_changed_notify()
			notify_property_list_changed()

@export var ResourceInfo:String

## Auto Refresh inspector property list
@export var AutoRefresh:bool = true

	
func _ready():
	if Engine.is_editor_hint() and text == "":
		text = "MyTitle"
		
		custom_minimum_size = Vector2(ProjectSettings.get("display/window/size/width"), 64)
	# else:
	#	rect_min_size = Vector2(get_tree().root.size.x, 64)

func _init():
	set("horizontal_alignment", HORIZONTAL_ALIGNMENT_CENTER)
	set("vertical_alignment", HORIZONTAL_ALIGNMENT_CENTER)
	set("theme_override_colors/font_size", Color.WHITE_SMOKE)
	set("theme_override_colors/font_color", Color.WHITE_SMOKE)
	set("theme_override_colors/font_shadow_color", Color.DARK_ORANGE)
	set("theme_override_constants/shadow_offset_x", 2)
	set("theme_override_constants/shadow_offset_x", 2)
	
	theme = load("res://L07 UI/theme.tres")
	theme_type_variation = "MyLabel"
	


