extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$center/v/option.add_item("Select and option.")
	$center/v/option.add_item("Random int")
	$center/v/option.add_item("Random float")
	$center/v/option.add_item("Random Vector2")

	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_option_item_selected(ID):
	match ID:
		1:
			generateIntRandom()
		2:
			generateFloatRandom()
		3:
			generateVector2Random()
			
func generateIntRandom():
	var random = floor(rand_range(1,11))
	$center/v/text.set_text("The number generated is: " + String(random))
	
func generateFloatRandom():
	var random = rand_range(1,11)
	$center/v/text.set_text("The number generated is: " + String(random))
	
func generateVector2Random():
	var randomX = rand_range(1,11)
	var randomY = rand_range(1,11)
	$center/v/text.set_text("The vector2 generated is: " + String(Vector2(randomX, randomY)))