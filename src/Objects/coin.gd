extends KinematicBody2D

func _on_Area2D_body_entered(body):
	Score.score += 100
	queue_free()
