extends TextureButton



func _on_caveButton_pressed():
	get_tree().change_scene("res://levels/fight.tscn")
	print("cave")


func _on_upgradeButton_pressed():
	get_tree().change_scene("res://levels/skillUpgrade.tscn")
	print("upgrade")


func _on_blacksmithButton_pressed():
	get_tree().change_scene("res://levels/blacksmith.tscn")
	print("blacksmith")


func _on_shopButton_pressed():
	get_tree().change_scene("res://levels/shop.tscn")
	print("shop")
