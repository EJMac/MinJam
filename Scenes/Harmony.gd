extends AudioStreamPlayer



onready var tween_h = get_node("HarmonyTween") 
export var transition_duration = 1.5
export var transition_type = 0
onready  var harmony_bus = AudioServer.get_bus_index("HarmonyBus")
var startvol = -80
var goal = 80.0


func _ready():
	AudioServer.set_bus_volume_db(harmony_bus, startvol)

func fade_in():

	tween_h.interpolate_property(self, "volume_db", null, goal, transition_duration, transition_type, 2, 0)
	tween_h.start()

func _on_Main_harmonysignal():
	fade_in()
	print("Harmony")
