extends Button



func _on_Attack2_pressed():
	get_tree().call_group("enemies", "attack")
	for node in get_tree().get_nodes_in_group("player"):
		for child in node.get_children():
			child.value += PlayerData.skill2
