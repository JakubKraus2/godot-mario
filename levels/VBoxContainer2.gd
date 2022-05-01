extends VBoxContainer


func _process(delta):
	$damageText.text = "damage: %s " % PlayerData.damage + "\nprize: 100"
	$armorText.text = "armor: %s" % PlayerData.armor + "\nprize: 100"
	$healthText.text = "health: %s " % PlayerData.health + "\nprize: 100"
	$damageText.margin_top = 4
	$armorText.margin_top = 96 + 16
	$healthText.margin_top = 96 + 96 + 16 + 16
	get_parent().get_parent().get_node("Money").text = "money: %s " % PlayerData.prize
