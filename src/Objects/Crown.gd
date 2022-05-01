extends Area2D



func _on_Crown_body_entered(body: Node) -> void:
	get_tree().change_scene("res://src/Levels/WinMenu.tscn")
