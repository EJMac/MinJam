extends Node2D

var red = false
var green = false
var blue = false
var melody = false
var harmony = false
var drums = false


#var harmony_bus = AudioServer.get_bus_index("HarmonyBus")
#var drums_bus = AudioServer.get_bus_index("DrumsBus")

signal melodysignal
signal harmonysignal
signal drumssignal
var msc = 0
var hsc = 0
var dsc = 0


#onready var tween_m = get_node("Music/Melody/MelodyTween") 
export var transition_duration = 1.00
export var transition_type = 1 # TRANS_SINE
	

func _process(_delta):
	
	if melody == true and msc == 0:
		emit_signal("melodysignal")
		msc += 1
		
	if harmony == true and hsc == 0:
		emit_signal("harmonysignal")
		hsc += 1
	if drums == true and dsc == 0:
		emit_signal("drumssignal")
		dsc += 1
	
	if red == false and blue == false and green == false:
		$Shaders/GreyscaleShader.visible = true
		$Shaders/BlueShader.visible = false
		$Shaders/GreenShader.visible = false
		$Shaders/RedShader.visible = false
		$Shaders/RedBlueShader.visible = false
		$Shaders/RedGreenShader.visible = false
		$Shaders/BlueGreenShader.visible = false
		
	if red == true and blue == false and green == false:
		$Shaders/GreyscaleShader.visible = false
		$Shaders/BlueShader.visible = false
		$Shaders/GreenShader.visible = false
		$Shaders/RedShader.visible = true
		$Shaders/RedBlueShader.visible = false
		$Shaders/RedGreenShader.visible = false
		$Shaders/BlueGreenShader.visible = false
		
	if red == false and blue == true and green == false:
		$Shaders/GreyscaleShader.visible = false
		$Shaders/BlueShader.visible = true
		$Shaders/GreenShader.visible = false
		$Shaders/RedShader.visible = false
		$Shaders/RedBlueShader.visible = false
		$Shaders/RedGreenShader.visible = false
		$Shaders/BlueGreenShader.visible = false
		
	if red == false and blue == false and green == true:
		$Shaders/GreyscaleShader.visible = false
		$Shaders/BlueShader.visible = false
		$Shaders/GreenShader.visible = true
		$Shaders/RedShader.visible = false
		$Shaders/RedBlueShader.visible = false
		$Shaders/RedGreenShader.visible = false
		$Shaders/BlueGreenShader.visible = false
		
	if red == true and blue == true and green == false:
		$Shaders/GreyscaleShader.visible = false
		$Shaders/BlueShader.visible = false
		$Shaders/GreenShader.visible = false
		$Shaders/RedShader.visible = false
		$Shaders/RedBlueShader.visible = true
		$Shaders/RedGreenShader.visible = false
		$Shaders/BlueGreenShader.visible = false
		
	if red == true and blue == false and green == true:
		$Shaders/GreyscaleShader.visible = false
		$Shaders/BlueShader.visible = false
		$Shaders/GreenShader.visible = false
		$Shaders/RedShader.visible = false
		$Shaders/RedBlueShader.visible = false
		$Shaders/RedGreenShader.visible = true
		$Shaders/BlueGreenShader.visible = false
		
	if red == false and blue == true and green == true:
		$Shaders/GreyscaleShader.visible = false
		$Shaders/BlueShader.visible = false
		$Shaders/GreenShader.visible = false
		$Shaders/RedShader.visible = false
		$Shaders/RedBlueShader.visible = false
		$Shaders/RedGreenShader.visible = false
		$Shaders/BlueGreenShader.visible = true
		
	if red == true and blue == true and green == true:
		$Shaders/GreyscaleShader.visible = false
		$Shaders/BlueShader.visible = false
		$Shaders/GreenShader.visible = false
		$Shaders/RedShader.visible = false
		$Shaders/RedBlueShader.visible = false
		$Shaders/RedGreenShader.visible = false
		$Shaders/BlueGreenShader.visible = false

func red_coin_hit():
	red = true
	melody = true
func blue_coin_hit():
	blue = true
	harmony = true
func green_coin_hit():
	green = true
	drums = true
func _on_RedThing_redsignal():
	red_coin_hit()
func _on_BlueThing_bluesignal():
	blue_coin_hit()
func _on_GreenThing_greensignal():
	green_coin_hit()
