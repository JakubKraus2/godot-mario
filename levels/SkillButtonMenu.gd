extends VBoxContainer




func _on_Skill1Button_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		PlayerData.skill1 += 10


func _on_Skill2Button_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		PlayerData.skill2 += 5


func _on_Skill3Button_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		PlayerData.skill3 += 7


func _on_Skill4Button_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		PlayerData.skill4 += 12


func _on_BackButton_pressed():
	get_tree().change_scene("res://levels/hub.tscn")
