extends Node2D

@onready var list = $"%ItemList"

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

