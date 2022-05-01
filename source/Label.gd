extends Label



func _process(delta):
	self.text = "%s " % get_parent().value + "/ %s" % get_parent().max_value
