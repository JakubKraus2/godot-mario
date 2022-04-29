extends Label



func _process(delta):
	get_parent().get_node("damageText").text = "damage %s" % PlayerData.damage
