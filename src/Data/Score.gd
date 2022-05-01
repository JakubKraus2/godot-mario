extends Node

signal score_updated
signal level_updated
var score: = 0 setget set_score
var level = 1 setget set_level

var bosshp = 3

func set_score(value: int) -> void:
	score = value
	emit_signal("score_updated")

func set_level(value: int) -> void:
	level = value
	emit_signal("score_updated")
