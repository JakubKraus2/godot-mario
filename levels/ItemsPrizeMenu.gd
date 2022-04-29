extends VBoxContainer


func _process(delta):
	$Item1Prize.margin_top = 4
	$Item2Prize.margin_top = 96 + 24
	$Item3Prize.margin_top = 96 + 96 + 32
	$Item4Prize.margin_top = 96 + 96 + 96 + 40
	get_parent().get_parent().get_node("Money").text = "money: %s " % PlayerData.prize
