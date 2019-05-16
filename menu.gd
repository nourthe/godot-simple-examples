extends Control

# Declare member variables here.

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_instances_pressed():
	get_tree().change_scene("res://examples/instances/instances.tscn")


func _on_events_pressed():
	get_tree().change_scene("res://examples/events/events.tscn")


func _on_random_pressed():
	get_tree().change_scene("res://examples/random/random.tscn")


func _on_character_movement_pressed():
	get_tree().change_scene("res://examples/character_movement/character_movement.tscn")
