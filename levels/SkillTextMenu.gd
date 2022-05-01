extends VBoxContainer


func _process(delta):
	$skill1Text.text = "skill1: %s" % PlayerData.skill1 + "\nprize: 100"
	$skill2Text.text = "skill2: %s" % PlayerData.skill2 + "\nprize: 100"
	$skill3Text.text = "skill3: %s" % PlayerData.skill3 + "\nprize: 100"
	$skill4Text.text = "skill4: %s" % PlayerData.skill4 + "\nprize: 100"
	$skill1Text.margin_top = 4
	$skill2Text.margin_top = 96 + 24
	$skill3Text.margin_top = 96 + 96 + 32
	$skill4Text.margin_top = 96 + 96 + 96 + 40
	get_parent().get_parent().get_node("Money").text = "money: %s " % PlayerData.prize
