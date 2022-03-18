extends KinematicBody2D

var can_port = false

func _on_Detector_body_entered(body):
	can_port = true

func _on_Detector_body_exited(body):
	can_port = false

func get_input():
	if Input.is_action_just_pressed("move_down") && can_port == true:
		get_tree().change_scene("res://src/Levels/Level_test3.tscn")
	else:
		pass

func _physics_process(delta):
	get_input()
