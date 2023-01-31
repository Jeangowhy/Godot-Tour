extends RichTextLabel


func _ready():
	connect("meta_clicked", _on_meta_clicked)

func _on_meta_clicked(meta):
	print(meta)
	OS.shell_open(meta)
