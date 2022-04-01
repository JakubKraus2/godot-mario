extends KinematicBody2D

export var durability: = 3

func _on_Area2D_body_entered(body):
	if durability != 1:
		Score.score += 50
		$AnimationPlayer.play("BounceAfterHit")
	else:
		queue_free()
	durability -= 1
