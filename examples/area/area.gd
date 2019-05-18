extends Node2D

# Called by 'area' signal: [body entered]
func _on_area_body_entered(body):
	# Shows the Node's name (all is a node)
	$text.set_text(body.name + " in")

# Called by 'area' signal: [body exited]
func _on_area_body_exited(body):
	# Shows the Node's name (all is a node)
	$text.set_text(body.name + " out")
