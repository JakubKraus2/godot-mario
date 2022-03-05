extends Node

signal score_updated
var score: = 0 setget set_score

func set_score(value: int) -> void:
	score = value
	emit_signal("score_updated")
