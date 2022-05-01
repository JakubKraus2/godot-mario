extends Label



func _ready() -> void:
	self.rect_pivot_offset = Vector2(rect_size.x/2, rect_size.y/2)
	$AnimationPlayer.play("grow")
