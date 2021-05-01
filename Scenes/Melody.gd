extends AudioStreamPlayer


onready var tween_m = get_node("MelodyTween") 
export var transition_duration = 1.5
export var transition_type = 0
onready var melody_bus = AudioServer.get_bus_index("MelodyBus")
var startvol = -80.0
var goal = 80.0


func _ready():
	AudioServer.set_bus_volume_db(melody_bus, startvol)

func fade_in():
	
	print(AudioServer.get_bus_volume_db(melody_bus))
	#tween_m.start()
	
	tween_m.interpolate_property(self, "volume_db", null, goal, transition_duration, transition_type, 2, 0)
	tween_m.start()
	print(AudioServer.get_bus_volume_db(melody_bus))
	
func _on_Main_melodysignal():
	fade_in()
	print("MELODY")

#func _process(_delta):
	#print(AudioServer.get_bus_volume_db(melody_bus))
