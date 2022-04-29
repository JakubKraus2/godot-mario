extends Label


func _ready():
	if get_parent().get_parent().is_in_group("enemies"):
		self.text = get_parent().get_parent().enemy_name
