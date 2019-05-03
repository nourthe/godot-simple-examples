extends Node2D

# Declare member variables here.

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Called when button 'create' is pressed
func _on_create_pressed():
	var new_ball = load("res://examples/ball.tscn")
	var new_ball_instance = new_ball.instance()
	add_child(new_ball_instance)
