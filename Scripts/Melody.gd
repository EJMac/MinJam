extends AudioStreamPlayer


onready var tween_m = get_node("MelodyTween") 
export var transition_duration = 2
export var fadeoutlen = 25
export var transition_type = 1
onready var melody_bus = AudioServer.get_bus_index("MelodyBus")
var startvol = -60.0
var goal = 60.0


func _ready():
	AudioServer.set_bus_volume_db(melody_bus, startvol)

func fade_in():
	

	tween_m.interpolate_property(self, "volume_db", null, goal, transition_duration, transition_type, 1, 0)
	tween_m.start()

func fade_out():
	
	tween_m.interpolate_property(self, "volume_db", null, startvol, fadeoutlen, transition_type, 1, 0)
	tween_m.start()
	
	
func _on_Main_melodysignal():
	fade_in()
	

func _on_PlayerCamera_musicfade():
	fade_out()
