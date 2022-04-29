extends VBoxContainer




func _on_damageButton_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		PlayerData.damage += 10


func _on_armorButton_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		PlayerData.armor += 5


func _on_healthButton_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		PlayerData.health += 20


func _on_BackButton_pressed():
	get_tree().change_scene("res://levels/hub.tscn")
