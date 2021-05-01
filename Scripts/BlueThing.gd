extends StaticBody2D

signal bluesignal
var count = 0.0
var rotationSpeed = 0.25
func _process(_delta):
	count += PI/360
	scale.x = sin(count/rotationSpeed)
	if count > PI:
		count -= PI
	
	
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		emit_signal("bluesignal")
		queue_free()
		
