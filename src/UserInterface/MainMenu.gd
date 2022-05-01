extends Node2D



func _on_NewGame_pressed() -> void:
	get_tree().change_scene("res://src/Levels/Level1.tscn")


func _on_ExitGame_pressed() -> void:
	get_tree().quit()
