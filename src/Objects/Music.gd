extends Node2D


func _on_AudioStreamPlayer2D_finished() -> void:
	$AudioStreamPlayer2D.play()
