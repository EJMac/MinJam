extends KinematicBody2D

var velocity = Vector2(0,0)
const WALKSPEED = 60
const RUNSPEED = 85
const JUMPFORCE = -350
const GRAV = 15
const MAXFALLSPEED = 300
signal testcam

func _physics_process(_delta): ##Delta times per second
	#Walk Movement and Animation
	if Input.is_action_pressed("right"):
		if Input.is_action_pressed("run"):
			velocity.x = RUNSPEED
			$playerSprite.flip_h = false
		else:
			velocity.x = WALKSPEED
			$playerSprite.flip_h = false
		
	elif Input.is_action_pressed("left"):
		if Input.is_action_pressed("run"):
			velocity.x = -RUNSPEED
			$playerSprite.flip_h = true
		else:
			velocity.x = -WALKSPEED
			$playerSprite.flip_h = true
	if Input.is_action_pressed("testCameraTween"):
		emit_signal("testcam")
	#Jump Movement
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE
	
	velocity.y = clamp((velocity.y + GRAV), -20000, MAXFALLSPEED)
	velocity = move_and_slide(velocity, Vector2.UP)	
	velocity.x = lerp(velocity.x, 0, 0.1)
