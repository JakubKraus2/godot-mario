extends VBoxContainer



func _on_BackButton_pressed():
	get_tree().change_scene("res://levels/hub.tscn")


func _on_Item1Button_pressed():
	if PlayerData.prize >= 100:
		PlayerData.prize -= 100
		DataHub.item1Bought = true


func _on_Item2Button_pressed():
	if PlayerData.prize >= 200:
		PlayerData.prize -= 200
		DataHub.item2Bought = true


func _on_Item3Button_pressed():
	if PlayerData.prize >= 500:
		PlayerData.prize -= 500
		DataHub.item3Bought = true


func _on_Item4Button_pressed():
	if PlayerData.prize >= 1000:
		PlayerData.prize -= 1000
		DataHub.item4Bought = true


func _process(delta):
	$Item1Button.disabled = DataHub.item1Bought
	$Item2Button.disabled = DataHub.item2Bought
	$Item3Button.disabled = DataHub.item3Bought
	$Item4Button.disabled = DataHub.item4Bought
