extends KinematicBody2D


func _on_Area2D_body_entered(body):
	Score.score = 0
	get_tree().reload_current_scene()
