extends Node3D

@onready var label = %Label

func _ready():
	# fill text from global scope
	label.text = GlobalAutoLoad.text
	
	# Clear the viewport.
	var viewport = %Viewport2D
	#viewport.set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
	viewport.set_clear_mode(SubViewport.CLEAR_MODE_ALWAYS)

	# Let two frames pass to make sure the vieport is captured.
	#yield(get_tree(), "idle_frame")
	await get_tree().process_frame
	await get_tree().process_frame

	# Retrieve the texture and set it to the viewport quad.
	var mat: = StandardMaterial3D.new()
	mat.albedo_texture = viewport.get_texture()
	#mat.uv1_scale = Vector3.ONE * 0.7
	#mat.uv1_offset = Vector3(.3, .0, -.3)
	mat.uv1_triplanar = true
	$MeshInstance.material_override = mat

func _physics_process(delta):
	$MeshInstance.rotation -= (Vector3.RIGHT + Vector3.UP) * 0.5 * delta
