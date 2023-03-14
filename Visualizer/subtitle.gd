extends Node2D

@onready var rich_text_label = $RichTextLabel

enum { FRESH, PRESENTED }

@export var center = true
var CRLF =  "\n\n"
#var CRLF = "\r\n\r\n" if OS.get_name() in ["Windows", "UWP"] else "\n\n"

var subtitles = []
var subtitle_state = FRESH
var current = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var subtitle: String = rich_text_label.get_text()
	rich_text_label.text = ""

#	var reg = RegEx.new()
#	# reg.compile("^\\[\\w+")
#	reg.compile("\\n(\\d+)\\s+?")
#	var res = reg.search_all(subtitle)
#	print_debug("match size: ", res.size())
#	for it in res:
#		print_debug("%s [%d,%d]" % [it.get_strings(), it.get_start(), it.get_end()])

	for it in subtitle.split(CRLF):
		var st = _parse_subtitle(it)
		subtitles.append(st)


func _parse_subtitle(subtitle):
	var reg = RegEx.new()
	reg.compile("\\n?(\\d+)\\s+?")
	var res = reg.search(subtitle)
	if res == null:
		return {id = -1}
	var id = res.get_strings()[1]
	reg.compile("\\n(\\d+:\\d+:\\d+).(\\d+) --> (\\d+:\\d+:\\d+).(\\d+)")
	res = reg.search(subtitle)
	if res == null:
		return {id = id}
	var its = res.get_strings()
	var start: float = Time.get_unix_time_from_datetime_string(its[1]) + its[2].to_int()/1000.0
	var end: float = Time.get_unix_time_from_datetime_string(its[3]) + its[4].to_int()/1000.0
	var dur: float = end - start
	var txt = subtitle.substr(res.get_end()).strip_edges()
	return {id = id, text = txt, start = start, duration = dur, end = end}


# func _iteration(delta): # GD3
# func _idle(delta): # GD3
# func _physics_process(delta):
func _process(delta):
	var now = Time.get_ticks_msec() - 2000
	if current >= subtitles.size():
		return
	if subtitles[current].end * 1000 < now:
		current += 1
		subtitle_state = FRESH
		rich_text_label.text = ""
	if current < subtitles.size() and subtitle_state == FRESH and subtitles[current].start * 1000 < now:
		subtitle_state = PRESENTED
		print_debug("present new subtitle: ", subtitles[current].text)
		rich_text_label.text = ("[center]" if center else "") + subtitles[current].text
