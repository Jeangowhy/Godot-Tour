extends Spatial

onready var label = $Viewport/Node2D/Label

func _ready():
	# fill text from global scope
	label.text = GlobalAutoLoad.text
	
	# Clear the viewport.
	var viewport = $Viewport
	$Viewport.set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)

	# Let two frames pass to make sure the vieport is captured.
	#yield(get_tree(), "idle_frame")
	#yield(get_tree(), "idle_frame")

	# Retrieve the texture and set it to the viewport quad.
	var mat: = SpatialMaterial.new()
	mat.albedo_texture = viewport.get_texture()
	mat.uv1_scale = Vector3.ONE * 0.7
	mat.uv1_offset = Vector3(.3, .0, -.3)
	mat.uv1_triplanar = true
	$MeshInstance.material_override = mat

func _physics_process(delta):
	$MeshInstance.rotation -= (Vector3.RIGHT + Vector3.UP) * 0.5 * delta
