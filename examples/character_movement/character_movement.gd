extends Control

## Extra code to make infinity movement in the scene

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# code to make infinity movement in the scene
	if $character.position.x > 1024:
		$character.position.x = 0
	if $character.position.x < 0:
		$character.position.x = 1024
	if $character.position.y > 600:
		$character.position.y = 0
	if $character.position.y < 0:
		$character.position.y = 600
