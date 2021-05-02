extends AudioStreamPlayer



onready var tween_h = get_node("HarmonyTween") 
export var transition_duration = 2
export var transition_type = 1
export var fadeoutlen = 25
onready  var harmony_bus = AudioServer.get_bus_index("HarmonyBus")
var startvol = -60
var goal = 60.0


func _ready():
	AudioServer.set_bus_volume_db(harmony_bus, startvol)

func fade_in():

	tween_h.interpolate_property(self, "volume_db", null, goal, transition_duration, transition_type, 1, 0)
	tween_h.start()
	
func fade_out():
	
	tween_h.interpolate_property(self, "volume_db", null, startvol, fadeoutlen, transition_type, 1, 0)
	tween_h.start()
	

func _on_Main_harmonysignal():
	fade_in()
	
func _on_PlayerCamera_musicfade():
	fade_out()
