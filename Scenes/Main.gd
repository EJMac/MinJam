extends Node2D

var red = false
var green = false
var blue = false
var count = 0

func _process(_delta):
	
	#count += 1
	#print(count)
	
	#if count > 200:
	#	red = true
	#if count > 400:
	#	red = false
	#	green = true
	#if count > 600:
	#	green = false
	#	blue = true
	#if count > 800:
	#	red = true
	#if count > 1000:
	#	blue = false
	#	green = true
	#if count > 1200:
	#	red = false
	#	blue = true
	#if count > 1400:
	#	red = true
	
	
	
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
