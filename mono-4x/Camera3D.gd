extends Camera3D

var z_pos = 0
var offset = 3.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	z_pos += delta
	$".".position.z = offset + sin(z_pos)
