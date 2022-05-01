extends Area2D





func _on_axe_body_entered(body: Node) -> void:
	print("cau")
	if Score.bosshp % 2 == 0:
		position = Vector2(1800, 537)
	else:
		position = Vector2(900, 537)
	Score.bosshp -= 1
