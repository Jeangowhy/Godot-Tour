extends BasicScene

@onready var title = $bg/MyTitle

# Called when the node enters the scene tree for the first time.
func _ready():
	title.set("custom_colors/font_color", Color.WHITE_SMOKE)
	title.set("custom_colors/font_color_shadow", Color.DARK_ORANGE)
	title.set("custom_constants/shadow_offset_x", 2)
	title.set("custom_constants/shadow_offset_y", 2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
