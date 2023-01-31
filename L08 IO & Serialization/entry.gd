@tool

# BasicScene defined in L0 Basic Guide/entry.gd
extends BasicScene

# (optional) class definition with a custom icon
class_name SceneL8
@icon("res://icon.png")

@onready var save_button = $save_button
@onready var load_button = $load_button

var path = "user://save_game.json"

func _ready():
	save_button.connect("pressed", save_game)
	load_button.connect("pressed", load_game)


func save_game():
	# game state data
	var content = []
	for node in get_tree().get_nodes_in_group("Persist"):
		if node.get('text') == null:
			print("Node has no data, ignore it: ", node)
			continue
		var item = {
			path = $bg/note.get_path(),
			text = $bg/note.text
			}
		content.append(item)
	var file = FileAccess.open(path, FileAccess.WRITE)
	var err = FileAccess.get_open_error()
	if err:
		$bg/note.text = "Fail to open file: " + path
	file.store_string(JSON.stringify(content))
	file = null # File is closed. not file.close()
	$bg/note.text = "Save game to file:" + path

func load_game():
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()
	file = null # File is closed. not file.close()
	for variant in JSON.parse_string(content):
		print("load: ", variant)
		get_node(variant.path).text = variant.text
	return content

func _test_json():
	path = "user://path/to/save.json"
	if not FileAccess.file_exists(path):
		DirAccess.make_dir_recursive_absolute(path)
		DirAccess.remove_absolute(path)
		var json: String = var_to_str({NodePath=self.get_path()})
		var file = FileAccess.open(path, FileAccess.WRITE)
		if FileAccess.get_open_error() != OK:
			return print("fail to write file: ", path)
		file.store_string(json)
		file = null
		print("json save to file: ", path)
	else:
		var file = FileAccess.open(path, FileAccess.READ)
		var json = file.get_as_text()
		var variant = str_to_var(json)
		print("json read from file: ", path, "\n", variant)
		file = null # File is closed. not file.close()
