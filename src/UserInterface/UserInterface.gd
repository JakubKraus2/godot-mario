extends Control

onready var scene_tree: = get_tree()
onready var score: Label = get_node("Label")

func _ready() -> void:
	Score.connect("score_updated", self, "update_interface")
	update_interface()

func update_interface() -> void:
	score.text = "Score %s" % Score.score
