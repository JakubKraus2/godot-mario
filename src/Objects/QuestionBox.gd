extends KinematicBody2D

func _on_Area2D_body_entered(body):
	Score.score += 50
	$AnimationPlayer.play("BounceAfterHit")