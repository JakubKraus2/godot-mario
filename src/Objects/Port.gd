extends Area2D



func _on_Port_body_entered(body):
	Score.score = 0
	get_tree().change_scene("res://src/Levels/Level" + str(Score.level + 1) + ".tscn")
	Score.level += 1

