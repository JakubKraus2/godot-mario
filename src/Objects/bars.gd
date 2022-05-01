extends KinematicBody2D


func _process(delta: float) -> void:
	if Score.bosshp <= 0:
		queue_free()
