tool

# BasicScene defined in L0 Basic Guide/entry.gd
extends BasicScene

# (optional) class definition with a custom icon
class_name SceneL8, "res://icon.png"

onready var camera_2d = $Camera2D
onready var save_button = $save_button
onready var load_button = $load_button

var path = "user://save_game.json"

func _ready():
	save_button.connect("pressed", self, "save_game")
	load_button.connect("pressed", self, "load_game")


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
	var file = File.new()
	var err = file.open(path, File.WRITE)
	if err:
		$bg/note.text = "Fail to open file: " + path
	file.store_string(to_json(content))
	file.close()
	$bg/note.text = "Save game to file:" + path

func load_game():
	var file = File.new()
	file.open(path, File.READ)
	var content = file.get_as_text()
	file.close()
	for variant in parse_json(content):
		print("load: ", variant)
		get_node(variant.path).text = variant.text
	return content

func _test_json():
	var path = "user://path/to/save.json"
	var file = File.new()
	var dir = Directory.new()
	if not file.file_exists(path):
		dir.make_dir_recursive(path)
		dir.remove(path)
		var json: String = to_json({NodePath=self.get_path()})
		var err = file.open(path, File.WRITE)
		if err != OK:
			return print("fail to write file: ", path)
		file.store_string(json)
		print("json save to file: ", path)
	else:
		file.open(path, File.READ)
		var json = file.get_as_text()
		var variant = parse_json(json)
		print("json read from file: ", path, "\n", variant)
	file.close()
