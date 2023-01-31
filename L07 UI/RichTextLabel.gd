extends RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	text = """
	Bitmap Font Generator
	字体 示范
	Example: The word [url=https://www.bbcode.org]BBCode[/url] is clickable.
	The word BBCode is clickable, use meta_clicked signal to handle it.
	
[url=https://godotengine.org/][img]res://icon.png[/img][/url]
	"""
	bbcode_enabled = true
	connect("meta_clicked", _on_meta_clicked, CONNECT_ONE_SHOT)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_meta_clicked(meta):
	print(meta)
	OS.shell_open(meta)


