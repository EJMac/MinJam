extends Camera2D

onready var player = get_node("/root/Main/Player")
export var transition_duration = 12
export var transition_type = 0
onready var tweencam = get_node("TweenCam")

func zoomOut():
	tweencam.interpolate_property(self, "zoom", null, Vector2(1.0, 1.0), transition_duration, transition_type, 3.0, 0.0)
	tweencam.start()

func _on_Player_testcam():
	zoomOut()
