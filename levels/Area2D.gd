extends Area2D




func _input(event):
	if event is InputEventMouseButton && event.pressed && event.button_index == BUTTON_LEFT:
		print("cave")
