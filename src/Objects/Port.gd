extends Area2D



func _on_Port_body_entered(body):
	get_tree().change_scene("res://src/Levels/Level_test" + str(Score.level + 1) + ".tscn")
	Score.level += 1

