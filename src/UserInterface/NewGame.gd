extends TextureRect


var mouse_on = false

func _on_NewGame_mouse_entered() -> void:
	mouse_on = true

func _on_NewGame_mouse_exited() -> void:
	mouse_on = false


func _physics_process(delta: float) -> void:
	if Input.is_mouse_button_pressed(BUTTON_LEFT) && mouse_on == true:
		get_tree().change_scene("res://src/Levels/Level_test3.tscn")
	else:
		pass
