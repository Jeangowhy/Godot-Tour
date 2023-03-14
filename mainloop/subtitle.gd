#!/usr/bin/env -S godot -s
class_name MyMainLoop
extends SceneTree

var subtitle = """[center]
1 
00:00:09,070 --> 00:00:12,080
Answer is [color=yellow]A4[/color]

2 
00:00:18,070 --> 00:00:21,080
Answer is [color=yellow]F4[/color]

3 
00:00:28,070 --> 00:00:32,080
Answer is [color=yellow]C4[/color]

4 
00:00:38,070 --> 00:00:41,080
Answer is [color=yellow]B4[/color]

5 
00:00:48,070 --> 00:00:51,080
Answer is [color=yellow]G4[/color]

6 
00:00:58,070 --> 00:01:01,080
Answer is [color=yellow]E4[/color]

7 
00:01:08,070 --> 00:01:11,080
Answer is [color=yellow]C5[/color]

8 
00:01:17,070 --> 00:01:21,080
Answer is [color=yellow]D4[/color]
"""

enum { FRESH, PRESENTED }

var subtitles = []
var subtitle_state = FRESH
var current = 0
var CRLF = "\r\n\r\n" if OS.get_name() in ["Windows", "UWP"] else "\n\n"

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


func _init():
    assert(1 == "1 ".to_int(), "parse int, ignore whitespace")
    assert(12 == "12d ".to_int(), "parse int, ignore whitespace")
    assert(1200 == "12:00d ".to_int(), "parse int, ignore whitespace")
    assert(1210 == "12-10string ".to_int(), "parse int, ignore whitespace")

    var reg = RegEx.new()
    # reg.compile("^\\[\\w+")
    reg.compile("\\n(\\d+)\\s+?")
    var res = reg.search_all(subtitle)
    print_debug("match size: ", res.size())
    for it in res:
        print_debug("%s [%d,%d]" % [it.get_strings(), it.get_start(), it.get_end()])

    for it in subtitle.split(CRLF):
        var st = _parse_subtitle(it)
        print_debug("it [%s]" % st)
        subtitles.append(st)


# func _iteration(delta): # GD3
# func _idle(delta): # GD3
# func _physics_process(delta):
func _process(delta):
    var now = Time.get_ticks_msec()
    if subtitles[current].end * 100 < now:
        current += 1
        subtitle_state = FRESH
    if current >= subtitles.size():
        quit()
        return
    if subtitle_state == FRESH and subtitles[current].start * 100 < now:
        subtitle_state = PRESENTED
        print_debug(subtitles[current].text)
        print_debug("now ticks: ", now)
