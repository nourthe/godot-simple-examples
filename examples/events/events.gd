extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Called by an InputEvent (Hint: Click keywords as InputEvent pressing Ctrl to get help).
func _input(event):
	if event is InputEventMouseButton:
		$center/text.set_text("Mouse Click/Unclick at: " + String(event.position))
	elif event is InputEventMouseMotion:
		$center/text.set_text("Mouse Motion at: " + String(event.position))
	elif event is InputEventKey:
        $center/text.set_text("Key pressed/unpressed: " + String(event.scancode))
