extends KinematicBody2D


func _on_PiranhaCollision_body_entered(body):
	get_tree().reload_current_scene()

