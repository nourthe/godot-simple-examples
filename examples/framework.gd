extends Control

# This is called by the "pressed" signal of the button.
func _on_return_menu_pressed():
	get_tree().change_scene("res://menu.tscn")

func _on_reload_scene_pressed():
	get_tree().reload_current_scene()
