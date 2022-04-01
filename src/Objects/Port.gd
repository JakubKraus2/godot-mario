extends Area2D


func _on_Port_body_entered(body):
	get_tree().change_scene("res://src/Levels/Level_test2.tscn")
