extends KinematicBody2D


func _on_MainCollision_body_entered(body):
	get_tree().reload_current_scene()


func _on_GrowCollision_body_entered(body):
	$AnimationPlayer.play("Eating")


func _on_AnimationPlayer_animation_finished(Eating):
	$AnimationPlayer.remove_animation("Eating")
