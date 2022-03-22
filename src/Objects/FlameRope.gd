extends Area2D


func _on_FlameRope_body_entered(body):
	get_tree().reload_current_scene()
