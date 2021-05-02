extends Camera2D

onready var player = get_node("/root/Main/Player")
export var transition_duration = 12
export var transition_type = 0
onready var tweencam = get_node("TweenCam")
signal musicfade



func zoomOut():
	tweencam.interpolate_property(self, "zoom", null, Vector2(1.0, 1.0), transition_duration, transition_type, 3.0, 0.0)
	tweencam.start()

	
func _on_TweenCam_tween_completed(object, key):
	emit_signal("musicfade")
	var t = Timer.new()
	t.set_wait_time(8)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	t.queue_free()
	print("TimerDone")
	get_tree().change_scene("res://Scenes/Credits.tscn")


func _on_Main_allthree():
	var t = Timer.new()
	t.set_wait_time(5)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	t.queue_free()
	zoomOut()
