extends AudioStreamPlayer

onready var tween_d = get_node("DrumsTween") 
export var transition_duration = 1.5
export var transition_type = 0
onready var drums_bus = AudioServer.get_bus_index("DrumsBus")
var startvol = -80.0
var goal = 80.0


func _ready():
	AudioServer.set_bus_volume_db(drums_bus, startvol)

func fade_in():

	tween_d.interpolate_property(self, "volume_db" , null, goal, transition_duration, transition_type, 2.0, 0.0)
	tween_d.start()
	
func _on_Main_drumssignal():
	fade_in()
	print("Drums")
