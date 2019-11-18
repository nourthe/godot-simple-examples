extends KinematicBody2D

# This is a more advanced demo, with soft movements

# Member variables
const ACELERATION = 80 # Pixels/second
const DECELERATION = 0.85
const MAX_SPEED = Vector2(500, 500) # Pixels/second

var velocity = Vector2()


func _physics_process(delta):
	var aceleration = Vector2()
	
	if Input.is_action_pressed("ui_up"):
		aceleration += Vector2(0, -1)
	if Input.is_action_pressed("ui_down"):
		aceleration += Vector2(0, 1)
	if Input.is_action_pressed("ui_left"):
		aceleration += Vector2(-1, 0)
	if Input.is_action_pressed("ui_right"):
		aceleration += Vector2(1, 0)
	
	aceleration = aceleration.normalized() * ACELERATION # Normalize with the constant lenght
	aceleration *= delta * 60 # Fix frame rate problems
	
	velocity += aceleration # Acelerating
	velocity *= DECELERATION # Decelerating
	
	velocity = move_and_slide(velocity) # applying the resulting velocity and getting the response velocity
