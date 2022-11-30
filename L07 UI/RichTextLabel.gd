extends RichTextLabel

onready var title = $"../../Title"
onready var label = $"../Label"
onready var rich = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	bbcode_enabled = true
	bbcode_text = """
	Bitmap Font Generator
	字体示范 
	Example: The word [url=https://www.bbcode.org]BBCode[/url] is clickable.
	[url=https://godotengine.org/][img]res://icon.png[/img][/url]
	The word BBCode is clickable, use meta_clicked signal to handle it.
	"""
	connect("meta_clicked", self, "_on_meta_clicked", [], CONNECT_ONESHOT)
	
	title.set("custom_colors/font_color", Color.whitesmoke)
	title.set("custom_colors/font_color_shadow", Color.darkorange)
	title.set("custom_constants/shadow_offset_x", 2)
	title.set("custom_constants/shadow_offset_y", 2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_dragged(offset):
	rich.bbcode_text += ":%d " % offset


func _on_meta_clicked(meta):
	print(meta)
	OS.shell_open(meta)


