extends Node

func _ready():
	pass

func _physics_process(delta):
	$MeshInstance.rotation -= Vector3.ONE * 0.5 * delta
