extends Control

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")

func _on_CreditsButton_pressed():
	get_tree().change_scene("res://Scenes/Credits.tscn")


func _on_fadeIn_fade_finished():
	pass # Replace with function body.
