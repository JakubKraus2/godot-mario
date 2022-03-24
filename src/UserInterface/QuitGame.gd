extends TextureRect


var mouse_on = false


func _on_QuitGame_mouse_entered() -> void:
	mouse_on = true

func _on_QuitGame_mouse_exited() -> void:
	mouse_on = false

func _physics_process(delta: float) -> void:
	if Input.is_mouse_button_pressed(BUTTON_LEFT) && mouse_on == true:
		print("aa")
		get_tree().quit()
	else:
		pass

