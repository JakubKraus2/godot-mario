extends TextureProgress


func _ready():
	self.max_value = get_parent().max_health
	self.value = get_parent().max_health
	print(get_parent().name, " ", max_value)
