extends KinematicBody2D


func _on_MainCollision_body_entered(body):
	get_tree().reload_current_scene()

func _ready():
	$AnimationPlayer.play("Eating")
