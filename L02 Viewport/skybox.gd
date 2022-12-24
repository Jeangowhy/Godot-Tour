tool
extends Spatial
class_name SkyBox

onready var sky_mesh = load("res://assets/skybox/skybox.obj")

export(StreamTexture) var TextureLeft = null setget set_TextureLeft
func set_TextureLeft(value):
	TextureLeft = value
	set_mat()

export(StreamTexture) var TextureRight = null setget set_TextureRight
func set_TextureRight(value):
	TextureRight = value
	set_mat()

export(StreamTexture) var TextureFront = null setget set_TextureFront
func set_TextureFront(value):
	TextureFront = value
	set_mat()

export(StreamTexture) var TextureBack = null setget set_TextureBack
func set_TextureBack(value):
	TextureBack = value
	set_mat()

export(StreamTexture) var TextureBottom = null setget set_TextureBottom
func set_TextureBottom(value):
	TextureBottom = value
	set_mat()

export(StreamTexture) var TextureUp = null setget set_TextureUp
func set_TextureUp(value):
	TextureUp = value
	set_mat()

onready var _mesh:MeshInstance = $SkyMeshInstance

func create_mat(texture):
	var m = SpatialMaterial.new()
	m.flags_unshaded = true
	m.albedo_texture = texture
	return m

func set_mat():
	if _mesh:
		_mesh.queue_free()
	
	_mesh = MeshInstance.new()
	_mesh.name = "SkyMeshInstance"
	_mesh.mesh = sky_mesh
	add_child(_mesh)
	_mesh.owner = self
	print(_mesh.owner, sky_mesh)
	_mesh.set_surface_material(0, create_mat(TextureRight))
	_mesh.set_surface_material(1, create_mat(TextureLeft))
	_mesh.set_surface_material(2, create_mat(TextureFront))
	_mesh.set_surface_material(3, create_mat(TextureBack))
	_mesh.set_surface_material(4, create_mat(TextureBottom))
	_mesh.set_surface_material(5, create_mat(TextureUp))


func _ready():
	set_mat()

