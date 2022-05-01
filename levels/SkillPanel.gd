extends Panel



func _on_Attack_pressed():
	var damage_number = preload("res://source/DamageNumber.tscn").instance()
	damage_number.text = String(PlayerData.skill1 + PlayerData.damage)
	damage_number.set_position(Vector2(rand_range(-50, 50), rand_range(-50, 50)))
	get_tree().call_group("enemies", "attack")
	if !DataHub.enemies.empty():
		DataHub.enemies[0].value -= (PlayerData.skill1 + PlayerData.damage)
		DataHub.enemies[0].add_child(damage_number)


func _on_Attack2_pressed():
	var damage_number = preload("res://source/DamageNumber.tscn").instance()
	damage_number.text = String(PlayerData.skill2 + PlayerData.damage)
	damage_number.set_position(Vector2(rand_range(-50, 50), rand_range(-50, 50)))
	get_tree().call_group("enemies", "attack")
	for node in get_tree().get_nodes_in_group("player"):
		for child in node.get_children():
			if child.is_in_group("health"):
				child.add_child(damage_number)
				child.value += (PlayerData.skill2 + PlayerData.damage)


func _on_Attack3_pressed():
	var damage_number = preload("res://source/DamageNumber.tscn").instance()
	damage_number.text = String(PlayerData.skill3 + PlayerData.damage)
	damage_number.set_position(Vector2(rand_range(-50, 50), rand_range(-50, 50)))
	get_tree().call_group("enemies", "attack")
	DataHub.enemies[DataHub.enemies.size()-1].value -= (PlayerData.skill3 + PlayerData.damage)
	DataHub.enemies[DataHub.enemies.size()-1].add_child(damage_number)


func _on_Attack4_pressed():
	var enemies = []
	var damage_number = preload("res://source/DamageNumber.tscn").instance()
	damage_number.text = String(PlayerData.skill4)
	damage_number.set_position(Vector2(rand_range(-50, 50), rand_range(-50, 50)))
	get_tree().call_group("enemies", "attack")
	for node in get_tree().get_nodes_in_group("enemies"):
		for child in node.get_children():
			child.value -= (PlayerData.skill4 + PlayerData.damage)
			enemies.append(child)
			
	for n in enemies.size():
		damage_number = preload("res://source/DamageNumber.tscn").instance()
		damage_number.text = String(PlayerData.skill4 + PlayerData.damage)
		enemies[n].add_child(damage_number)
