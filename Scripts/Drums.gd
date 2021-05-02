extends AudioStreamPlayer

onready var tween_d = get_node("DrumsTween") 
export var transition_duration = 2
export var fadeoutlen = 25
export var transition_type = 1
onready var drums_bus = AudioServer.get_bus_index("DrumsBus")
var startvol = -60.0
var goal = 60.0


func _ready():
	AudioServer.set_bus_volume_db(drums_bus, startvol)

func fade_in():

	tween_d.interpolate_property(self, "volume_db" , null, goal, transition_duration, transition_type, 1.0, 0.0)
	tween_d.start()
	
func fade_out():
	
	tween_d.interpolate_property(self, "volume_db" , null, startvol, fadeoutlen, transition_type, 1.0, 0.0)
	tween_d.start()
	
func _on_Main_drumssignal():
	fade_in()
	
func _on_PlayerCamera_musicfade():
	fade_out()
