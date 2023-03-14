extends Node2D

var spectrum: AudioEffectSpectrumAnalyzerInstance
var width: int
var height: int

const VU_COUNT = 1024
const FREQ_MAX = 1000 # 11050.0
const MIN_DB = 60

@onready var bg:TextureRect = $bg
@onready var circle_of_fifths_colors = $CircleOfFifthsColors

func _ready():
	spectrum = AudioServer.get_bus_effect_instance(0, 0, 0)
	width = ProjectSettings.get_setting("display/window/size/viewport_width", 800)
	height = ProjectSettings.get_setting("display/window/size/viewport_height", 480)

func _draw():
	_draw_bars()
	_draw_bg()

func _draw_bg():
	var magnitude: float = spectrum.get_magnitude_for_frequency_range(0, FREQ_MAX, 1).length()
	var noise: FastNoiseLite = (bg.texture as NoiseTexture2D).noise
	#noise.set_frequency(clamp(magnitude, 0.007, 0.015))
	noise.set("fractal_ping_pong_strength", lerp(5.1, 5.2, magnitude * 2000))
	var s = clamp(lerp(0.8, 1.00, magnitude * 100), 0.0, 1.0)
	circle_of_fifths_colors.scale = Vector2(1.0, 1.0) * s
	
func _draw_bars():
	#@warning_ignore(integer_division)
	var w = width / VU_COUNT
	var prev_hz = 0
	for step in range(1, VU_COUNT+1):
		var hz = step * FREQ_MAX / VU_COUNT;
		var magnitude: float = spectrum.get_magnitude_for_frequency_range(prev_hz, hz).length()
		var energy = clamp((MIN_DB + linear_to_db(magnitude)) / MIN_DB, 0, 1)
		#print(step, " freq: %s Hz - %s - %s" % [ hz, magnitude, energy] )
		var h = energy * height
		draw_rect(Rect2(w * step, height - h, w, h), Color.GREEN_YELLOW)
		prev_hz = hz


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	queue_redraw()


