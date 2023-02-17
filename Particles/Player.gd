extends PlayerController

onready var particles = $"../Particles"
onready var camera = $Camera

func _ready():
	pass
	#particles = get_node(NodePath("../Particles"))

func jump(to, strength):
	var pm = particles.get_process_material() as ParticlesMaterial
	pm.set_direction(to)
	particles.set_amount(strength * 2000)
	particles.set_emitting(true)
	#particles.restart()

func move(to):
	.move_forwards(self, to, camera)

func yaw(to):
	.look_around(self, Vector3(0, to, 0), camera)

func pitch(to):
	.look_around(self, Vector3(to, 0, 0), camera)

func escape():
	.quit()
